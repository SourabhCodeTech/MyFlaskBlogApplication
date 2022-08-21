-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 06:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'FirstName', 'FirstName@gmail.com', '8989890707', 'FirstName is the best name', '2022-07-31 02:07:43'),
(2, 'Sourabh', 'thid@gmail.com', '5656747483', 'Hi, I am Sourabh Gautam', '2022-07-31 02:58:17'),
(3, 'Sourabh', 'gplicbbk@gmail.com', '9450043000', 'Hi, I am Sourabh Gautam.', '2022-08-10 11:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tag_line` varchar(110) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(2500) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tag_line`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Now Let\'s Learn Stock Market!!', 'Stock Market Tag Line', 'learn-stock-market', 'A stock market, equity market, or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depositary receipts (ADRs) on U.S. stock markets.', 'about-bg.jpg', '2022-08-21 09:07:06'),
(3, 'Third Post Title is Here!', 'Third Post Tag Line.', 'third-post', 'Welcome to Flask’s documentation. Get started with Installation and then get an overview with the Quickstart. There is also a more detailed Tutorial that shows how to create a small but complete application with Flask. Common patterns are described in the Patterns for Flask section. The rest of the docs describe each component of Flask in detail, with a full reference in the API section.\r\n\r\nFlask depends on the Jinja template engine and the Werkzeug WSGI toolkit. The documentation for these libraries can be found at:\r\n\r\nJinja documentation\r\n\r\nWerkzeug documentation\r\n\r\nUser’s Guide\r\nFlask provides configuration and conventions, with sensible defaults, to get started. This section of the documentation explains the different parts of the Flask framework and how they can be used, customized, and extended. Beyond Flask itself, look for community-maintained extensions to add even more functionality.', 'home-bg.jpg', '2022-08-10 14:55:33'),
(4, 'Fourth Post Title is here.1', 'Fourth Post Tag Line is here.', 'fourth-post-five', 'ager to get started? This page gives a good introduction to Flask. Follow Installation to set up a project and install Flask first.\r\n\r\nA Minimal Application\r\nA minimal Flask application looks something like this:\r\n\r\nfrom flask import Flask\r\n\r\napp = Flask(__name__)\r\n\r\n@app.route(\"/\")\r\ndef hello_world():\r\n    return \"<p>Hello, World!</p>\"\r\nSo what did that code do?\r\n\r\nFirst we imported the Flask class. An instance of this class will be our WSGI application.\r\n\r\nNext we create an instance of this class. The first argument is the name of the application’s module or package. __name__ is a convenient shortcut for this that is appropriate for most cases. This is needed so that Flask knows where to look for resources such as templates and static files.\r\n\r\nWe then use the route() decorator to tell Flask what URL should trigger our function.\r\n\r\nThe function returns the message we want to display in the user’s browser. The default content type is HTML, so HTML in the string will be rendered by the browser.\r\n\r\nSave it as hello.py or something similar. Make sure to not call your application flask.py because this would conflict with Flask itself.\r\n\r\nTo run the application, use the flask command or python -m flask. You need to tell the Flask where your application is with the -app option.\r\n\r\n$ flask --app hello run\r\n * Serving Flask app \'hello\'\r\n * Running on http://127.0.0.1:5000 (Press CTRL+C to quit)\r\nApplication Discovery Behavior\r\nAs a shortcut, if the file is named app.py or wsgi.py, you don’t have to use --app. See Command Line Interface for more details.\r\n\r\nThis launches a very simple builtin server, which is good enough for testing but probably not what you want to use in production. For deployment options see Deploying to Production.\r\n\r\nNow head over to http://127.0.0.1:5000/, and you should see your hello world greeting.\r\n\r\nIf another program is already using port 5000, you’ll see OSError: [Errno 98] or OSError: [WinError 10013] when the server tries to start. See Address already in use for how to handle that.\r\n\r\nExternally Visible Server\r\nIf you run the server you will notice that the server is only accessible from your own computer, not from any other in the network. This is the default because in debugging mode a user of the application can execute arbitrary Python code on your computer.\r\n\r\nIf you have the debugger disabled or trust the users on your network, you can make the server publicly available simply by adding --host=0.0.0.0 to the command line:\r\n\r\n$ flask run --host=0.0.0.0\r\nThis tells your operating system to listen on all public IPs.', 'pos1t.jpg', '2022-08-21 07:53:24'),
(6, 'here title', 'Hello, I am Tag Line', 'I-am-slug', '←\r\nphpMyAdmin\r\nHome Empty session data phpMyAdmin documentation MariaDB Documentation Navigation panel settings Reload navigation panel\r\nCollapse all Unlink from main panel\r\nNewNew\r\nDatabase operationsiblog\r\nNewNew\r\nExpand/CollapseStructurecontacts\r\nExpand/CollapseStructureposts\r\nExpand/CollapseDatabase operationsinformation_schema\r\nExpand/CollapseDatabase operationsmysql\r\nExpand/CollapseDatabase operationsperformance_schema\r\nExpand/CollapseDatabase operationsphpmyadmin\r\nExpand/CollapseDatabase operationstest\r\n Server: 127.0.0.1\r\n Database: iblog\r\n Table: posts\r\nBrowse Browse(current)\r\nStructure Structure\r\nSQL SQL\r\nSearch Search\r\nInsert Insert\r\nExport Export\r\nImport Import\r\nPrivileges Privileges\r\nOperations Operations\r\nTracking Tracking\r\nTriggers Triggers\r\nPage-related settings Click on the bar to scroll to top of page\r\nSQL Query Console Console\r\nascendingdescendingOrder:Debug SQLExecution orderTime takenOrder by:Group queries\r\nSome error occurred while getting SQL debug info.\r\nBookmarksRefreshAdd\r\nNo bookmarks\r\nAdd bookmark\r\nLabel: \r\n Target database: \r\n Share this bookmark \r\n​\r\nOptionsSet default\r\nAlways expand query messages\r\nShow query history at start\r\nShow current browsing query\r\n Execute queries on Enter and insert new line with Shift+Enter. To make this permanent, view settings.\r\nSwitch to dark theme\r\n Showing rows 0 - 2 (3 total, Query took 0.0100 seconds.)\r\nSELECT * FROM `posts`\r\n Profiling [ Edit inline ] [ Edit ] [ Explain SQL ] [ Create PHP code ] [ Refresh ]\r\n Show all	|			Number of rows: \r\n25\r\nFilter rows: \r\nSearch this table\r\nSort by key: \r\nNone\r\nFull texts\r\nsno	\r\ntitle	\r\ntag_line	\r\nslug	\r\ncontent	\r\nimg_file	\r\ndate	\r\n	\r\nEdit Edit\r\nCopy Copy\r\nDelete Delete\r\n1\r\nLet\'s Learn Stock Market!!\r\nStock Market Tag Line\r\nlearn-stock-market\r\nA stock market, equity market, or share market is ...\r\nabout-bg.jpg\r\n2022-08-10 12:37:42\r\n	\r\nEdit Edit\r\nCopy Copy\r\nDelete Delete\r\n3\r\nThird Post Title is Here!\r\nThird Post Tag Line.\r\nthird-post\r\nWelcome to Flask’s documentation. Get started with...\r\nhome-bg.jpg\r\n2022-08-10 14:55:33\r\n	\r\nEdit Edit\r\nCopy Copy\r\nDelete Delete\r\n4\r\nFourth Post Title is here.1\r\nFourth Post Tag Line is here.\r\nfourth-post-five\r\nager to get started? This page gives a good introd...\r\npos1t.jpg\r\n2022-08-21 07:53:24\r\nWith selected:  Check all With selected:    \r\n Show all	|			Number of rows: \r\n25\r\nFilter rows: \r\nSearch this table\r\nSort by key: \r\nNone\r\nQuery results operations\r\n    \r\nBookmark this SQL query Bookmark this SQL query\r\nLabel: \r\n Let every user access this bookmark\r\n\r\nOpen new phpMyAdmin window\r\n- Drag to reorder.\r\n- Click to mark/unmark.\r\n- Double-click to copy column name.\r\n- Drag to reorder.\r\n- Click to mark/unmark.\r\n- Double-click to copy column name.\r\n', 'img.png', '2022-08-21 09:12:40'),
(7, '[October 2021] Best Laptop Models to Buy For College Students', 'In this blog, we will be discussing the best laptop models to buy for students. Before buying any laptop you s', 'best-laptop-models-to-buy-2021', 'Importance of SSD: \r\nYou should always prefer a laptop with SSD. SSDs are 10X faster than mechanical hard drives and are highly recommended these days. SSDs usually have a longer life compared to mechanical drives.\r\n\r\nImportance of Recent Processors: \r\nThe processor is responsible for processing the data. Better the processor better computations can be performed by it. More threads and cores mean better multitasking(multiprocessing). Higher-generation processors are usually better in terms of performance and pricing.\r\n\r\n\r\n\r\nHow to get Discounts?\r\nYou can get very good deals during Flipkart Big Billion Days Sale and Amazon’s Great Indian Festival Sale. \r\n\r\nHow much Ram is sufficient?\r\nRAM is responsible for storing the programs temporarily in the volatile memory. The higher and faster the RAM, the better the multitasking performance. For an average user I suggest 8 GB of ram is enough. \r\n\r\nDo you need a Graphics Card?\r\nIf you are interested in gaming, video editing, or graphics-intensive software like Blender, Premiere Pro/After-Effects, you will need a good graphic card. Otherwise, graphic cards will not hamper your experience on your machine.\r\n\r\n\r\n\r\nBest Laptop Models To Buy [October 2021]\r\nHere I am providing the link to an Excel sheet where you can find the best laptop models which I have shortlisted. You can try these links below. \r\n\r\nLinks:\r\n\r\nGoogle Drive Mirror 1\r\n \r\nGoogle Sheet\r\n \r\nGoogle Drive Mirror 2\r\n \r\nDownload', 'pngformting.png', '2022-08-21 09:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
