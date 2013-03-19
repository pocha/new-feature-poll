Poll app for website owners
===========================

Slick rails app which lets website owners collect feedback on a newly deployed feature from their user. Simply deploy the app on the server, add a poll from the Rails console (check test file inside spec to know how), embed the poll inside an iframe below the feature & you are good to go.

Use the code below to embed

	<iframe src="http://__YOUR_DOMAIN__/polls/_YOUR_POLL_ID_" frameborder=0 style="height:70px; overflow:hidden; width:100%"></iframe>

70px height is needed for the poll to show up nicely without any scrollbars

Demo url - http://poll.codelearn.org/polls/1
