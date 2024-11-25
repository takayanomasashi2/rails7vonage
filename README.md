# Vonage Video API Demo

This is a demo application built in Ruby using [Ruby on Rails](https://rubyonrails.org/) and the [Vonage Rails Initializer](https://github.com/Vonage/vonage-rails), which uses the [Vonage Ruby SDK](https://github.com/Vonage/vonage-ruby-sdk)

## Pre-requisites

To run this demo locally you will need:

- A [Vonage Developer account](https://developer.vonage.com/sign-up)
- [Ruby](https://www.ruby-lang.org/en/) installed
- [Ngrok](https://ngrok.com/) installed

## Setting up your Vonage Application

You'll need to set up a Vonage application to manage the capabilities and obtain the API credentials for this app.

1. Log onto the [Vonage Developer Dashboard](https://dashboard.nexmo.com/)

2. Go to the [Applications](https://dashboard.nexmo.com/applications) page and click on the  'Create a new application' button

3. Generate a private key for the application by clicking on the 'Generate public and private key' button. Download the `private.key` file and keep it somewhere safe.

4. Under 'Capabilities', enable the application for **Video** and **Messages** by toggling the switches to 'on' (for Messages, you will need to fill in the 'Inbound URL' and 'Status URL' fields, but you can just put some dummy urls here, since we won't be using the webhooks)

5. Click on the 'Generate new application' button at the bottom. This will generate and Application ID for the Vonage application; make a note of this for later.

6. For the 'Invite Participant' functionality the demo, if the mobile number you are sending the invite to is in a country or region which does not support alphanumeric sender IDs, you will need to a virtual number enabled for SMS to send the invites. Go to the [Buy Numbers](https://dashboard.nexmo.com/buy-numbers) page and purchase a number with SMS capabilites. You can then link this number in the Dashboard to the Vonage application you just created by accessing that application under [Applications](https://dashboard.nexmo.com/applications) page and licking on the 'Link' button next to the number. Note that to send SMS in Japan, at the time of creating this demo, alphanumeric sender IDs are currently supported. You can check [Japan SMS Features and Restrictions](https://api.support.vonage.com/hc/en-us/articles/204017353-Japan-SMS-Features-and-Restrictions) for the latest guidelines.


## Running the Demo Locally

1. Open Terminal and navigate to wherever you want to clone the repository.

2. Clone the repository
    ```
    git clone https://github.com/Vonage-Community/demo-video-rails-rubykaigi.git
    ```

2. Change directory (`cd`) into the root directory of the cloned repository and install the dependencies
    ```
    bundle install
    ```

3. Copy or move the `private.key` file you downloaded earlier the root directory of this demo application

4. Copy or rename the `.env-example` file to `.env` and update the file with your Vonage credentials:
    - `VONAGE_APPLICATION_ID`. This is the Application ID you generated earlier when creating the Vonage Application
    - `VONAGE_NUMBER`. If you completed step 6 of Setting up your Vonage Application, this is the Vonage virtual numer you purchased, otherwise you can leave it as the same value as the sample or use some other valid alphanumeric value.

5. Start up Ngrok
    ```
    ngrok http 3000
    ```

6. Copy the Ngrok `Forwarding` URL and set this in the `.env` file as the value for `SITE_URL`

7. In a separate Terminal tab, start the Rails application
    ```
    rails s
    ```

8. In your browser, navigate to `localhost:3000`
