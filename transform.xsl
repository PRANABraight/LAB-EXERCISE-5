<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>LearnSphere</title>
        <style type="text/css">
          body {
            font-family: Arial, sans-serif;
            
          }
          h1, h2 {
            text-align: center;
          }
          table {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #76c1d4;
          }
          hr {
            border: 0;
            border-top: 1px solid #ccc;
            margin: 20px 0;
          }
        </style>
      </head>
      <body class="bg:blue-400">
        <h1 >LearnSphere</h1>
        <hr/>
        
        <!-- Course Table -->
        <h2>Course</h2>
        <table>
          <tr>
            <th>Title</th>
            <th>Instructor</th>
            <th>Duration</th>
            <th>Price</th>
            <th>Rating</th>
            <th>Certificate</th>
            <th>Quiz</th>
          </tr>
          <xsl:for-each select="course/lesson">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="instructor"/></td>
              <td><xsl:value-of select="duration"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="rating"/></td>
              <td><xsl:value-of select="certificate"/></td>
              <td><xsl:value-of select="quiz"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- User Table -->
        <h2>User</h2>
        <table>
          <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Date of Birth</th>
            <th>Country</th>
            <th>Subscription Type</th>
            <th>Payment</th>
          </tr>
          <xsl:for-each select="course/user">
            <tr>
              <td><xsl:value-of select="user_id"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="email"/></td>
              <td><xsl:value-of select="password"/></td>
              <td><xsl:value-of select="date"/></td>
              <td><xsl:value-of select="country"/></td>
              <td><xsl:value-of select="subscriptionType"/></td>
              <td><xsl:value-of select="payment"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Quiz Table -->
        <h2>Quiz</h2>
        <table>
          <tr>
            <th>Quiz ID</th>
            <th>Lesson ID</th>
            <th>Question</th>
            <th>Answer</th>
            <th>Attempts Allowed</th>
            <th>Time Limit</th>
            <th>Passmark</th>
          </tr>
          <xsl:for-each select="course/quiz">
            <tr>
              <td><xsl:value-of select="quiz_id"/></td>
              <td><xsl:value-of select="lesson_id"/></td>
              <td><xsl:value-of select="question"/></td>
              <td><xsl:value-of select="answer"/></td>
              <td><xsl:value-of select="attempt_allowed"/></td>
              <td><xsl:value-of select="time_limit"/></td>
              <td><xsl:value-of select="passmark"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Certificate Table -->
        <h2>Certificate</h2>
        <table>
          <tr>
            <th>Certificate ID</th>
            <th>Quiz ID</th>
            <th>User ID</th>
            <th>Lesson ID</th>
            <th>Quiz Attempt</th>
            <th>Quiz Result</th>
            <th>Issue Date</th>
          </tr>
          <xsl:for-each select="course/certificate">
            <tr>
              <td><xsl:value-of select="cert_id"/></td>
              <td><xsl:value-of select="quiz_id"/></td>
              <td><xsl:value-of select="user_id"/></td>
              <td><xsl:value-of select="lesson_id"/></td>
              <td><xsl:value-of select="quiz_attempt"/></td>
              <td><xsl:value-of select="quiz_result"/></td>
              <td><xsl:value-of select="issue_date"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Feedback Table -->
        <h2>Feedback</h2>
        <table>
          <tr>
            <th>Feedback ID</th>
            <th>User ID</th>
            <th>Subject</th>
            <th>Feedback Text</th>
            <th>Date</th>
            <th>Lesson ID</th>
            <th>Rated</th>
          </tr>
          <xsl:for-each select="course/feedback">
            <tr>
              <td><xsl:value-of select="feedback_id"/></td>
              <td><xsl:value-of select="user_id"/></td>
              <td><xsl:value-of select="subject"/></td>
              <td><xsl:value-of select="ftext"/></td>
              <td><xsl:value-of select="date"/></td>
              <td><xsl:value-of select="lesson_id"/></td>
              <td><xsl:value-of select="rate"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
