# Be sure to restart your server when you modify this file.

MealApp::Application.config.session_store :cookie_store, key: '_meal_app_session',
expire_after: 30.days
