User.create!([
  {username: "happytweeter123", email: "happytweeter@gmail.com"},
  {username: "randomstuff789", email: "randomstuff789@gmail.com"},
  {username: "bubbles", email: "bubbles@gmail.com"}
])

Tweet.create!([
  {text: "This is my first tweet! I can't wait to say more things", user_id: 1},
  {text: "My new phone is a fairytale, and I want to start a blog. Fabulous insane nail clippings, man.", user_id: 3},
  {text: "My mom is very timely, and I want to get more done. A bit of creepy ambition, man. #choppedfest #randomtweet", user_id: 2},
  {text: "My script is not for you, and I want to get more email. Fabulous great caffeine, forever. #maltedgold #randomtweet", user_id: 1},
  {text: "My very soul is a disaster, and I want to be famous. Let there be stellar heroes, IMHO. #sillypop #randomtweet", user_id: 2}
])

