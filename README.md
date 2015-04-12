# A simple video uploader

ビデオをアップロードして表示するよ。

.mp4にencodeするよ。

テスト書いてないよ。ごめんなさい。

# How to develop

## Required

### [Mac](http://www.apple.com/jp/mac/)

### [Homebrew](http://brew.sh/index_ja.html)

### Ruby

1. Install rbenv
https://github.com/sstephenson/rbenv#basic-github-checkout
2. Intall latest Ruby
```
rbenv install 2.2.1
rbenv global 2.2.1
gem install bundler
```

### MySQL

```
brew install mysql
```

### ffmpeg

```
brew install ffmpeg
```

### Terminal Notifier

To notify test result

```
brew install terminal-notifier
```

## Checkout and Setup

```
git clone git@github.com:bugcloud/shadow-uploader.git
cd shadow-uploader
bin/bundle install --path vendor/bundle
```

## Setup DB

```
bin/rake db:create
bin/rake db:migrate
```

### Start development

```
bin/rails s
```

Access http://localhost:3000

If you want to access using IP adress, type this.

```
bin/rails s -b 0.0.0.0
```

### Upload file

POST video by multipart request.

```
http://localhost:3000/api/items.json
```

#### video file's param name

```
item[video]
```

#### Test by curl

```
curl -F 'item[video]=@/SOMEWHERE/SOMEVIDEO.avi' http://localhost:3000/api/items.json
```
