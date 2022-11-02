# GitFollowers iOS App
# Overview:

GitFollower app allows the user to search for Github users hitting the GitHub API, you can add and save github users to a favorites list via local persistence, view followers, view repos via safari services.

<img width="210" height="450" alt="Screenshot 2020-05-26 at 17 07 57" src="https://user-images.githubusercontent.com/44005264/82910916-e4637480-9f73-11ea-9293-95b8c71401bd.png">  <img width="210" height="450" alt="Screenshot 2020-05-26 at 17 08 15" src="https://user-images.githubusercontent.com/44005264/82910930-e9282880-9f73-11ea-9c4e-2923bd4407bf.png"> 
<img width="210" height="450" alt="Screenshot 2020-05-26 at 17 16 32" src="https://user-images.githubusercontent.com/44005264/82911544-af0b5680-9f74-11ea-8d81-223395cbe05c.png">


# App Premise:

- The user can enter a GitHub username and retrieve a list of that username's followers.
- The user can search within these followers for a specific follower.
- The user is able to tap on a follower from that list to get more information about that follower. 
- The user is able to save favorite username searches so they don’t have to type them every time. This needs to persist between app launches.



# Technologies

- Pagination
- Persistence Managment
- Custom Protocol/Delegate Pattern
- Diffable Data Source
- Async/Await
- Programmatic UI


# Details:

- Use the GitHub API - No authentication needed 
    - Followers endpoint - https://developer.github.com/v3/users/followers/
    - User info endpoint - https://developer.github.com/v3/users/
