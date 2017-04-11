class MyMailer < ActionMailer::Base

  def sendgrid_client
    @sendgrid_client ||= SendGrid::API.new(api_key: "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")
  end

  def new_user(user)
    template_id = "641cdf3b-8b1d-42d3-94a5-8b7bdcc3201e"

    data = {
      "personalizations": [
        {
          "to": [
            {
              "email": user.email
            }
          ],
          "substitutions": {
            "-name-": "USER_NAME",
            "-content-": user.name
          },
          "subject": "Welcome to Code4Pro"
        }
      ],
      "from": {
        "email": "minhduc.xd.93@gmail.com"
      },
      "template_id": template_id
    }

    sendgrid_client.client.mail._("send").post(request_body: data)
  end
end