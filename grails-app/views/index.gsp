<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee	;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 5em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.8em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}
			#status li a {
				text-decoration: none;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
				a{

				}
			}
		</style>
	</head>
	<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a href="http://localhost:8080/hubbub/post/index"/>Posts</a></li>
			<li><a href="http://localhost:8080/hubbub/profile/index"/>Profile</a></li>
			<li><a href="http://localhost:8080/hubbub/tag/index"/>Tags</a></li>
			<li><a href="http://localhost:8080/hubbub/user/index"/>User</a></li>
		</ul>
	</div>
		<div id="page-body" role="main">
			<h1>This  covers</h1>
			<p>
				■ What GORM is and how it works<br>
				■ How domain classes are saved<br>
				and updated<br>
				■ Techniques for validating and<br>
				constraining fields<br>
				■ Domain class relationships (1:1, 1:m, m:n)<br>
				■ Generating UIs instantly with scaffolding<br>
				■ Restyling the scaffolding<br>
				■ Customizing the scaffolding for your project<br>
				■ Searching User
			</p>
		</div>
	</body>
</html>
