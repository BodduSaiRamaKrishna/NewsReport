<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feed Back Form</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h3>FeedBack Form</h3>

<div class="container">
  <form action="/action_page.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="India">India</option>
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select>
    <label>What task did you want to accomplish on this website?</label>
    <input type="text">

    <label>Were you able to find the information you were looking for on our website?</label>
    <select id="country">
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>

    <label>Did you find that information valuable?</label>
    <select id="country">
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>

    <label>How much effort did you personally have to put forth to handle your request?</label>
    <input type="text">

    <label>How did this effort compare to your expectations?</label>
    <input type="text">

    <label1>How visually appealing is our website?</label1>
    <input type="text">

    <label>How easy is it to navigate our website?</label>
    <input type="text">

    <label>What do you think about the story we tell through our website?</label>
    <input type="text">

    <label>If you were to review the website what score would you give it out of 5?</label>
    <select id="country">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    <label for="subject">Any Thing Do You Want Say</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>