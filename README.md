<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="API Template">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>

# smock

### What is it?
---
smock is a simple mock server built using Vapor 3. Once running it can be used by posting your desired mock response to the server then calling it.

**Example payload**
```
{
  "code": 200,
  "method": "GET",
  "payload": {
    "name": "smock",
    "example": [
      "one",
      "two"
    ],
    "test": true
  },
  "route": "my_test",
  "headers": {
    "request-uuid": "bc909396-3a46-4271-9525-8581316f7aae"
  }
}
```
Then to retrieve this object again you would simply make a GET request to http://localhost:8080/my_test and it should return:
```
{
  "name": "smock",
  "example": [
    "one",
    "two"
  ],
  "test": true
}
```
With a status code of 200 and an additional header of `"request-uuid":"bc909396-3a46-4271-9525-8581316f7aae"`.

### To run the server
---
From the command line:

```
    vapor xcode
    vapor build && vapor run
```
