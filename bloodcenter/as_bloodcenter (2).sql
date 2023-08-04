-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 03:30 PM
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
-- Database: `as_bloodcenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pwd`) VALUES
('admin', 'admin'),
('hi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bloodavailable`
--

CREATE TABLE `bloodavailable` (
  `id` int(50) NOT NULL,
  `hospitalname` varchar(50) NOT NULL,
  `bloodgroup` varchar(55) NOT NULL,
  `bloodbage` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodavailable`
--

INSERT INTO `bloodavailable` (`id`, `hospitalname`, `bloodgroup`, `bloodbage`) VALUES
(1, 'jo', 'O+', '2');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bags`
--

CREATE TABLE `blood_bags` (
  `bagid` bigint(100) NOT NULL,
  `bagno` text NOT NULL,
  `donarid` text NOT NULL,
  `donarname` text NOT NULL,
  `recvdate` varchar(15) NOT NULL,
  `expdate` varchar(15) NOT NULL,
  `charge` text NOT NULL,
  `bgrp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bags`
--

INSERT INTO `blood_bags` (`bagid`, `bagno`, `donarid`, `donarname`, `recvdate`, `expdate`, `charge`, `bgrp`) VALUES
(1, '101', '4', 'DZDQ434WxB/dkscd0klP2lTDlTA49EkMRauC137E9J7+aZznhZ7+ZHiDenksfGoBfQGIV0Tv3xFdwca+wqxFal25ntG6gFthZ8V0uEwaTjS/Q27KDyqXJXN8Ye/tsG5vyNpv7xAMZGsLjBXljJyr0RDpciaEyb7RJqO/WClLBEo=', '18/10/2022', '31/10/2022', '250', 'O+'),
(2, '102', '5', 'KiSthIviN/fzW72LSfqlCJq+tvc8s+a4ibm14H8UW8GFk9ewsThp9Qah6paxhwrifSPgkQz+lZ6jnpGsmGxgkmzoFJMjUszW1crpy7JzztKxfiEVzWKIia3n8DFIpk2XHsWhsspPtiOFuis2FCaxgFjd6geuVW39H8a+Z7fTtAM=', '22/10/2022', '29/10/2022', '350', 'O-'),
(3, '103', '6', 'Qy8h4wxMi3U2pdvYXDU0iLfCZe0ozu41BrESvAoNsCYss2B7UUPV9zwxiAAM3FgKTgFwZM0If10W681Ugdtz7pvSBJAI360UpsGTAHV9Fb+rKzHJ9IJ4MoYVpHGd/2snRrhzoQWYhUOikAUkFNz6BCH+2+J6vyA6X3dQYaGxAgs=', '22/10/2022', '29/10/2022', '520', 'A+'),
(4, '2', '8', 'lwwNiPLoGhmmABSgjt8R8E1/T2UDH3RklbEqm9R2TNreLOpW0Xcq0DY+ku7I0EuM1IwnzKe5HZBww0oKx6hcVsYZ/RfVoAF6XfnKWKJck5+EHd7ig8WxpGi0mRX/jbCJ3zu0hr09lB0vfYPPQAn9XZcAWB9WVJkwXqpDAixs5gc=', '16/4/2023', '30/4/2023', '100', 'O+');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donar`
--

CREATE TABLE `blood_donar` (
  `d_id` bigint(100) NOT NULL,
  `dname` text NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `email` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `bgroup` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donar`
--

INSERT INTO `blood_donar` (`d_id`, `dname`, `gender`, `dob`, `email`, `contact`, `address`, `bgroup`, `status`, `pwd`) VALUES
(4, 'KBo/evgOc7Qgq6AByPdTmikaQ4sDDf03Rb0lgGmWOnObKKPmP1LGHoc/soVzjKlWXUs8W/+L00RKKiZxyPMcJJNqkjdYBbPkdUWPY/3k6zwg3KUHfLhqc+barpth0GWcambVzMD9mcu9WLc0pECoS1KTjlBxQu7fVXxfmaCw0VA=', 'Male', 'L4AFf6kBlQy83QbrttOXUBI1c6eQKtv6dAcszr4fOE1CuFVel38z+8FzaNrvMv7SMya+70H+mwUobWi/9QsHydW4wf8mC3ooLD67L4YaHvFFBswLEnGQlWvHNzYpOed1mMWMoqe9tKK1X0dJfk7PR62xtf/fIpMOUXna4+VLGQI=', 'kumar@gmail.com', 'cZ4Xy0DvwgNcnWLLP/eKWb7J289ZEZ86CQv5m//vr0RctQM67RcFPqLpWGI38EF8cv0qNirzIGuS8Wg3BhifyLmRs5tICSVNWvEqpQeE7mgkbHdHZD5s/lUVZbYZTnxAvDeT+sunb3Utd+LWo+zqc+GVF4Ux9z6LsB/gwDIn4DI=', 'A5GFtHN62TSE5rPbeao2UF/QO+NnsI3hoIH/PaaGGJOYUnzK6TZkClgfAV1353hU1nsxPiNeeiKC30iaxL7CAFdVPFvw4RR1iyw3qImNeaoxwchLTBEBRXqXZQRDANkv83fu98RcaPN9ZUvYVkQCsiqgitOEUxlsBG2uGae8vIQ=', 'O+', 'Accepted', ''),
(5, 'cBcYoFFUdh0RQSL6kiMDUqkZ5qxtf3990vVjoDWnrOzujXTiSHTZTSw1aGDo5w1Q5I7LJ0oEvFLePH/r+0MwovjyzxIhiFGZkVOVYExnaVzqhYvrERSCWSNSHV7jRkiXwUHzcpiHne4UWv/e2L8hwkowYSdmyI/vM0IWf/UiTTg=', 'Male', 'KkOwSyI+MAEUDyqB+f+ChcHO8ATe/c+FBW8imsk2cjll1bb+vVsK3DMIOcQZIUHUFr6W3tYz8ft6taw1WuLjxARj2vz98TjtOeuRA4IXGz62NPINsfoU4B+QJHpbVSU3jDog38Wdhcv6PqHTCc4T3X9ModWdJOla3BmZHTLZZXk=', 'suresh@gmail.com', 'TVjFovlZzaBpQwZdjosYKm6YoH4cbPWrKgr+/O4mMhHJlfe4nFsBnvV/5qioNQDlacdDeOAUNXw/dwQBNWRJMk+PfDP+QsXMb3FU6RkWWYKQkJvncx3jVvsYF9X3prvXQ+AF6FhAl8AB6+JISxGkQJKruZbtX5hJEmQNKtbG4NM=', 'MYdZWGNxiPxMATfNa/alyRfUozKU0dRgs6GMiS9KWSWR/N/xkAq42cwesFFZ5hH0VFZztSqCRdYeh/q8DQ3abGvWidYigskQxsNQLpZrduiXbrc424fGkL2yR/VpaYBX2YyJufSAwf1g629Cu2QbF9AkJHA7uf6uTTC6CbUz0Hw=', 'O-', 'Available', ''),
(6, 'QgBsbYo1xZ538H/xr2zq+Al/OIpz0/msJa3PeF70YPq+8/lwQVeOsj0O6cNRwrNq0TYTwBzLbR6IyD4Ua/PdDwPRBY10F2YkbS7wvKkH6c/dWh9307rH/8Kqzn7XZ8Bi2jq0LJ/UBAPud+DZZj1Rtpu80/HlBhPvb1KuNz9hzJc=', 'Male', 'RsfsVdU0ELGSCM8nRBHLAxX/Lj/jDsVF3b0DKmI8j5nRSC1q4q1RKWQtHWwQDcYHXIl9StofvoQlPE4jOJbN/hBirFeQmpJc7KcIJ556rxRslUvXQS1TZwebvh8sJlunsUAsx+JN1AwE/KgoUnj/G1jAvSvWz1EASiNxrdV78Bw=', 'sri@gmail.com', 'dK/KTY4+3qN/sd7NY/zT/Zx9wPov2SoxMOCP+HNYqsLPN36KkwzqA0IT6LkcSRrBdNOgyrKeku3KQ1/eBiiQ7CxRgBAAlUlppKqFROIN10+dd7XNjXqGxNOkjnnKgNS8kXViujMtbralHpk6xMDwYHF7uOb6ME0h6qeR99L1+yA=', 'K0LDQ8KBfQiU09VeZWi7oYJU434Cwzg+Km/bxQ5ofMCVN7goifQPqTSEpen0iuBTOvnBhmYUQITVJp/jLXR3eCKYPJgmDGO7XBaO4rka2BCGwVfNDqorz40kUKgCGzf7+9mJ2NFQZtiu6rrTmsuQaE9MLoZsEQPZfT1PDQanKXE=', 'A+', 'Accepted', ''),
(7, 'R+B1vwyGEPs9ZFtWKygbcKt8zMp7hJPyFq4FxaZZy5wZ7XxDpkU1n0bkvIDij9qYVZx/rfm7uHDSZdcdIxzp/Wt0+eYlkuGjadeT7PAOvmY3Oa/wYcpL8l8w41S9Cgi3Ihj+uMfECGobSw8az+Ig6dUzA9z3pCa46EyhrHrrA3I=', 'Male', 'ebf0Pe5lqSz7CGxNqZlPy5ZdU0a5rv5K4e/sPagcotFSKQPzo9cV8cadEshGtzQOLqpSRL3R9dwXmxj41dPP1e2zIB8hu/v8ykFOiX0DwH+itGZ/Hol79ieb0DvC5NsIwTmbv1Yur3WXGxSikFZzEOcck3cJD8G1zQKEJEhiluQ=', 'kumar1@gmail.com', 'lW9EfWTBHuorZca8fKhMA3ANoVg0CaS/LMG/RdIDjwPhNxPRFXE1M07Bpjz03VBrx7T5ztSUjI8qZvytGGrRj0jGcuFYz8AEHuoKJRxo/NfWeTunl56HzMn0/Rfi0f6z8/bq4+GvoQrPzxGw0VQZb4WDxJpUO1ZR8YtMG9hu3Uk=', 'hqFtGkr0N4PZPOGE2v6WTaphbGecKYjwtbCNY/Kjf68k7ZBWzc7YK2mOYgBtKSbeBPzlQJX2PPGa86td5CgU1PfjYWqomsdpNQf2Ami7Swf1IjwcsmfyLXV4tm5egyBxkap50rvpDyUvCsT0dHFFG+FMDzbZ+vNmIJ/xb/EgY1c=', 'O+', 'Accepted', '123'),
(8, 'DRJUcD3ElfYl03Z2AOoOFoLo/2Zjc6TCj3IIoGaZLlI6Da9oBgRHF/6lg5HzTAHzE1VbLIiZmc6dGS9iWOGrkUtUeyy5rABOcoD0T02f6r+LJib8EvqcRkKKHR0WG+7xS9GKWbRUpHC8fwbLEpX4hbukeR3pRNtAlruwBEjJvNg=', 'Male', 'jYc33m1fX2/6ibZp44TcFAN99KTJ1MpFdc/DmYxxN0VCNpVjAe61UnV/Pl58f/s64c8Fq9vk76+1228n9dSvax25/mU1rB5x50pw90b8nCPEIHO+gHROhxagGZ3VE8UYdWvRYM2uDjKcMtLooGHlRQz0JcF0XTQBQ0qjWc4+QfI=', 'jo@gmail.com', 'BGM8qBNCKL0IBs3HTlLa1JUrHg9pHXIZ8lXFnSrIYXfC82lim8nAF2Qo7238CNhSyZl8h9qzwXaokgbHMybut5OJzp8D15MVI3NR5LulWw5a53xiUbd1euBxhfKp8tXcgeBaRc2+4JIJ5wiuiXAGVvRNCRYhciuXyh6WQQuvwJo=', 'SsCBZ27wpqq8syD+prfN7jmxD6aRyB48CWzcg3tynTz8xp2ck51UDydUezxFBty+29fXFynSFSPucUoNV+KdgLbZVF0m5iwrlhxsvfWhUbpyfTlpJpHSTkPcRkcFEHbhQlBQS+7Z7S/EJpMYEPZeJupRPgy9X5Zk5zc2facQcu8=', 'O+', 'Accepted', '123');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `rid` bigint(100) NOT NULL,
  `uid` text NOT NULL,
  `reason` text NOT NULL,
  `bgrp` text NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `rtime` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`rid`, `uid`, `reason`, `bgrp`, `rdate`, `rtime`) VALUES
(1, 'tsathishsec@gmail.com', 'today need 2 unit blood', 'A+', '2020/1010/2022', '13:52:05'),
(2, 'tsathishsec@gmail.com', 'check availability ', 'O-', '20/10/2022', '13:53:05'),
(3, 'tsathishsec@gmail.com', 'need blood for relation\n', 'O-', '22/10/2022', '11:30:52'),
(4, 'karan@gmail.com', 'blood for child', 'A+', '22/10/2022', '14:49:54'),
(5, 'jo@gmail.com', 'For me', 'B+', '16/04/2023', '10:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `checking`
--

CREATE TABLE `checking` (
  `id` int(100) NOT NULL,
  `un` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ps` text NOT NULL,
  `ppk` varchar(200) NOT NULL,
  `pvk` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checking`
--

INSERT INTO `checking` (`id`, `un`, `ps`, `ppk`, `pvk`) VALUES
(29, 'PKAKUmofcHJ6DgGMLHQIcraEVnDwiRQktGw CWqAgziDwd6uNc/5K5 wUKIblXK0Xn6b xO/ouzFttLsq8Pb8vfmpZkb3agI25ni30kYWqqOERlRcOUAW3RZXtIHBGVL0nUlwNLp7I9 0lFzG51dTtTc8uHoKiyb0qJprxIA/48I Gqfeyndl6vS 3yHPTqGhMJSliT4CS472QBg4QOmEBTalFJpXdYG6dvN4nLZrY4nUV0tCaQWLQqlcELrVuTfnZq3YZQDVv5cShkhlhB7Vs3Y x/OJXqD5Zs6 U1yl5VTDRf/mXulaXPo2Xmx48MQGDS7uHCDRGTtetABPRwdvA==', '2Q6r56rzgLzM/9bIeaqVUwQRwBPcG J5xMzY/ P38Jwsv95U4oRkiJpAT3/QjRHg9XH0OU5J1CAoOYp5ucSoRyyJKFpMWOvMimC5x0CTcSJIQydUS7a5dHEX4nVUjl0UD92 0lFCgT3ne1rp1cpAu250aCOpjnHqg4EHaeM7cWzZt84 t8IPrIeRF1JduvLCVbpEYhlnqc3YQBzomiJgx846zVJfbmwRaGNSiXwxCcIQ6btJBU5a2yCuYLtEPW1XxxX3bRRLRGlQRt0eJP 5OLzVmTny/ l wYWOyEThGmB5MBEEZLBqvsheCori0/n916VLiqJslNFrvSZR54Leww==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3i8XfyhlyP9/NftpH F7kFx61jorCxyylEzxBM5UGTdctLeY4 xneTh RsGuGSUU0jrP5KKn7UURTOTBBGYtSBKw xFWbsFz1xoLJqtPeUYBksN3bVFE1JGJs3lnMfdgeb0vNosquiEz8Ml7nyfEb9Zs7GJa', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDeLxd/KGXI/381 2kf4XuQXHrWOisLHLKUTPEEzlQZN1y0t5jj7Gd5OH5Gwa4ZJRTSOs/koqftRRFM5MEEZi1IErD7EVZuwXPXGgsmq095RgGSw3dtUUTUkYmzeWcx92B5vS82iyq6ITPwyXufJ8Rv'),
(30, 'KF5dhbgS7OsPTk z0e1sne2L6muv74fzFDv1DSn0BTXDCMUym5Nyz8UJhCWkSOMlb/ 4JFGG8PTUjcPNSXuLhjrnEt8L23s8dFUhigVi7qc6G DkibN2ELTrqR7rqd8pteRAUWZVencd0B5AFY6gewcVUZw7Kc1 D65Q5KzoRf6 ZJ9 iBdIzDkXHmI4paPKj6IrAiBFKLnEi1w Ito5m24lakt/aRw5f8ui0uPzaHjXi1PHOKlXmcKW67W4tMok3IT9ZVGqerjAsQU46GSbgNNWKW9h3PYi3cQvQ/TrVmssachkM/OmFEtSQfrfXdx10rnk4rFk5tNOAOE5g0wtDQ==', 'hsa4ytNwXdnmLxDvSyg809NWw kvY6k87imM9RrFgOheJ zozCcRhjSRcs56HWCWe8AHMyLfbAEGX94mmYEVu5v1MC6MtaH7TEKLIJsF7D13Zs Bmqncpp5pmBdEG9lH0HA8mMf0R4TuAsUQyCUYIee3c25 XkMfqOaiIpoIc0NhmLN99zE7kdks2ApoTPGQv/T1DZkPeTJMR8ROBUdBPAHoW3hdwFQnpxZA4WYhTJl9dzPVHYFBeru/RoqNdACvjHJt7uSOPUFnUIdJqJTBa5QNQcX9qSgvWXrlS0hZ3rtV7B1uMNxQ6Kh2ay28dnTfb2OQWzB1nJe YfBnumk0xQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4holNNJPfMrs2M/leevE4hDH9gu3 HHyuB7pIzOunnSFDPDJJDwViflfNqeTyaUTgVprmMqnRQpp3IkgdGdS/7jcVGMe2G0sLLMdQgh121P6VkSnE6M2s/t84fyyNAYLsiWsFr9VFp gz 1z2lUEXvzORsLe', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDiGiU00k98yuzYz V568TiEMf2C7f4cfK4HukjM66edIUM8MkkPBWJ V82p5PJpROBWmuYyqdFCmnciSB0Z1L/uNxUYx7YbSwssx1CCHXbU/pWRKcTozaz 3zh/LI0BguyJawWv1UWn6DP7XPaVQRe'),
(31, 'zSHw5pJHJqBBucV 4VBMJVpVRoVR0dFXopymduGJdGYhlx8Xgy1DU9dfMr4Hk2AhZbVe6D CN HjpVDQvJfIa0An69kmlZQlWyNAroru/NWeTB/2ar2Nox8haCiPjEFddLPMl3agcNNnFdRvDq9ifAF5rhulQKq8LPtz8N0YrgnCLVLGwNMevlYs 1lPgWSJViUtFjtmBIcDTW7AEC/YNmnQc3VJUdMaftjeu9DpRmufW0fl MifQq9muhPFTC9Yt9NNSJS6sKQWeafRaDEHbz1n4CsKeA2WIJWoR5KATB1VD8ilFUMbqx5gnGLRVLSPnMx6hBWXLpRtAUONtNjPWQ==', 'AcQdThnJ vu0OAb4fdlHoupZ2LZCbszScuFbHTVBNyWcWfY4bef3O5me6bJ7z//qdbTWYcuwKERxOlVQnduBRcjP y8TUpS4CXZ0pUVfj6F5KhbnOudM5eZqsQ4wHJ 5kGSThXMBpnVxYkZpl/nDUkqb3gCL6pMn6prmxlpw2d/2w83ueunJ5CX4QT3EsTPXquqGPVcEPntczstLKGNEzWyHd0NYT9klY3l7Ja1tJe8ZUCsXR21PH2om7JtZW7fret6NRsZ0u0V86jFEdlJe02G 7ZU0qf1X0Kf4l24yCPTPxoGxU2COJv5L3oMu5kPIN9g9iFB/ZqhrKcXyVz07fw==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA01HuvnOVCcBRDujrLVzblSGCuAlV8h1AiuIhdtBi5CbVj287pGOQZNlb57a86peiDztwYYPvx mesDyGLdmNgEvsN68NwyGARpf/9QoMcA8h9EE40ZqnDa21TjqmF3Fw7N9AXYRQm4M/yxHeRVYdZ1EZ4QBJ', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDTUe6 c5UJwFEO6OstXNuVIYK4CVXyHUCK4iF20GLkJtWPbzukY5Bk2Vvntrzql6IPO3Bhg /H6Z6wPIYt2Y2AS w3rw3DIYBGl//1CgxwDyH0QTjRmqcNrbVOOqYXcXDs30BdhFCbgz/LEd5FVh1n'),
(32, 'brR3ZQl7fLBOKZzFV2R2Ut6wrNqnRe5MJqHl9C28ARifvf5TCTmay0EbBqDujZygyLlTAmjAAFu963nzlMNNOtQy00BfZMOj e5xBjHoICMBocBnBlZGHkseAXFIqTtUF rNQtQGCDm6RCxKe/Znen04TTftIxpxbHIP5LvPCL8OLRm8EHtKGvC11lKWQc5Juod6rvX JIiMvTx9F4XA0KIGrn3wFSvftEcA2jA0JUVb2EYMiyFDN /piBnfxNvXyzP6XQ9AjIa7oYYVe/hYYD7BVJvomF/JjmftThUQ5rHl2UoWdPQBK9rX0rpySP pj9cIUIXiaAFRfVy WyK7NA==', 'O/oslynCvqNkAVd9VgeUiFpixELbiKk/9EWqZ4CPFTq/Flu/j7i9l5CBUHufp9g12EKi vMhTm9gpUIWnbe/QGY69yT09vz19lv3p6O2kbnbvgJWQJwbvvOGXlGpv42OfGBFvyu0yGu5nv5wk6xVAgtgZSQmDsLwnIU3svoygAw9q4kjcDrTeAofnJ4QXqYcK9jia2AD71uQaLd7cV6/n1afM4bH6iQxJAlHYk/heM4jLnBWshLBA1tC vFV/Mj3uDzDy1fToEv1Qr546e59DhiicuxlL36aGTJIvxrThiABbCqne2gX BT0yjMNNQdHRq9LkcLvogIZT9aQh/jawg==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs3aPMSDmwU644mlLWYwPHLKjzGnzSI4v2BboDUTnVrHRHuZ8KW 5gVQZz72aR7IBen1GaXwXcK4awuVU6dxJxUAQY8u8p2OXKiLWHjopFf04E5XlqLrWJCHxkne4iG8nxJiHdL9UcUJ64DSABJCpI OtxH8S', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCzdo8xIObBTrjiaUtZjA8csqPMafNIji/YFugNROdWsdEe5nwpb7mBVBnPvZpHsgF6fUZpfBdwrhrC5VTp3EnFQBBjy7ynY5cqItYeOikV/TgTleWoutYkIfGSd7iIbyfEmId0v1RxQnrgNIAEkKkj'),
(33, 'NhXkqjvnC8V8jF kptoVCdltEAIPT/VG2lRNylh10yGOskUO4ezxC5ReWR27Qvp4GtvMijd9Bn4sFk2q6bZkK1eYYiwHlIRwQem/j4cgthCCMNQnLBY9/gW0eiB/cezZtM pSnIEJlPOflBMfnEXICGUFJ6pNGdkBXJN9xxurYvNr7XgbVITcacQehdFHXbcRaw7O8FJXyxQUYjnot2YRr584vIUrI7cq wifPYNQlYRGNLX5SzpksGcsTAUP9Av97vgYW PAvSRzpgXxCQk8DOFa5J1pcrVBFslSsDsTLG1vhD5uTa9OTtsxUDPAWjErJQVaOD9yNiBq6icTczvlg==', 'fuj8 fFj9FOCNc/T35TaL7V9iHcys7REK4T3l QZQmUI27c0s86RC33dyX0NzRWLpjPe2lQfYHkkLnx fthkNSLY zIBWuIeKw1RYBoUBjxsjWNvHri74f98WuYZvGMe4ROg366qXT4D2DCzpqLbokc6jdocI9z3p0HBbs5ieihh4EWLX6trj/R00HK1pv9MoKN8AE1A5tmtp8/8NGThW I7CQSVyZuNxCO6H5jq2vtywbq55WLtFLRwtqCPQ42SUXWs11 vvRN3yS7HBDEhKxNmpzaEoLxDUCBVU vQyoDupjjfUHzx0EgpbHhpu dncGIyjUVEibsCR3XvBuIvPg==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjWZbfuBTEQ4jPbN4Ej8kp366SlTcq1rcfC4i6fpO8JDzKIy2FR2rliDQTxzCfitG vvhQtf13sw5Zw qEnzviayLDyR3aucBX3O6OSMwVftcePTguKTR sX2SE3alAfQwDvCUqTStx8e4PaaVKV5OlOwLIh3', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCNZlt 4FMRDiM9s3gSPySnfrpKVNyrWtx8LiLp k7wkPMojLYVHauWINBPHMJ K0b6  FC1/XezDlnD6oSfO JrIsPJHdq5wFfc7o5IzBV 1x49OC4pNH6xfZITdqUB9DAO8JSpNK3Hx7g9ppUpXk6'),
(34, 'KWd1OUgX2VKSktBSL ehGWWyoAIwkYBde4l4gUSQ9Av6clXs5 tyZW  XeA4eA5rrXchBzzzEGkETnn86ja2vg9NmU6f9XY2SccGseeaQNjYoEcGMpMrij3sk4VyrOKqgUkXPcJ3zLmhxYaYmX3ooIT5y/tiOj5zF1KluSlv4hukC tYhTeGl3gipUyfby0xTljL6jfYflk xQD6GUoPplQD61d/L88dfnCH2ge2XTwnRKxMDj9v0wKLwf8y6NNtRGiLBKpZygx7JWEQygKprxocBoHZ2bBUnLgVLr0VnMAa57FvnROkCNUJtnFWtWOk2bL TbVF/W1iIUTU0sZbpQ==', 'InxdvDavu4w/3Wugz5eNX7TEiOXqnlgtNCFgsqAY2zl 8n9GkT8kk06xLvol345QmBpjvQKwISHMm/6eIcbqb0w jBxmPcZgcKdugqEp7PGYYpywxOucIWHONj53DnH FSGWi7mEmY23ZtZZjifhS/yQ7 bzYqjzrRqESwAhNt0We4/oYjpOY0bdvUsl2IaCCV1a9xxBm40ctau38uf  r4HkCnVp9yUvRE3S BFFOzzwiZQ9DnXoE0yxMs8 n08kfav/X//GNHYGuYHpNOxoQOrDPB2kvhPd5JAOL3YyIAjP5hdipp/0ODNGmtCh2l5w796M7L2fqehKOcazMBHqg==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr392FpcRl8g0wDhkV958GmXSAxh1MFOTqKnxXxh0UDGbMmoHLy5XimBKujZEI3p0RLPMrY73cPr9w5NrTv8ppnGKJY3pvP3MgdXn8JoqJQrvt7lwHaE9nT8rIZ18a0YnPdahq9P488rMf5 QGL4BSXNhup8a', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCvf3YWlxGXyDTAOGRX3nwaZdIDGHUwU5OoqfFfGHRQMZsyagcvLleKYEq6NkQjenREs8ytjvdw v3Dk2tO/ymmcYoljem8/cyB1efwmiolCu 3uXAdoT2dPyshnXxrRic91qGr0/jzysx/n5AYvgFJ'),
(35, 'Wn mZ2eNrKWSw941cvd7JJTyQAlCBTjlCnZgX/CAESMVtEhVaCydh8i9B7Mux 3mc2slzreYQxNWUGtn5nHsAvOWXp/VsJceUqsbSiQ6Qs3sJkoPXj6zCq12x/sKd2Hx7lbmU2SLgD2HfmvNVNoyCicdz3eIa/oj/YQVnARuH9xTtVqIsteI1buRY9lVdc3yDinTzx lrn51z40O/vdbUU HVux8Bm3 Ihv/K7mKnan2v2tRwL12K86s/p0FS83AL8FQEt32OH8iS0EeXEe9Q4aQErRHTQSPJ3aLZujCT6GoGK/b0DAkVUjekc aYw2Zx2cT9knwLmcBE5bEVdCnng==', 'aLCqjkQK9kFXg6d5c6mwI1P5hg8v1TvTRryhqtCqhbA6x iPYn70BXzsKR/n4PIn /uXtDRMifNJdOR1f1 PU6hsXqFFNMW1HHmINb9Od0LNc0iZF1TktqDjpZ6n TY0PSrqkn/ESWN3dIZVeoyg6rJC731Jhc1tD/7KTxblcvCCEN8r4bSBTBGM2lTKp2/ILRj13TI5QkM 77KmOMqB5oTP2gjyiw9yvuZ/fqOLXHpd/zM05eSEwilkY8HcMtelXiK xc5DA8ADnSzEgyZCcZ 80jC3ciOqEn6fQ JzzFEQ5LjjO5wAh3tzNwqSWOI0QEk0Lkbk5hZ8ArBpwh7Rpg==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs87DDDTdQDu2eU VUJy 9GZpU3mDT59KB dAWOFGm6up7uMfjnvBcpQtplvQCunY3jrZuzit1H2qwOemeGvngyJAWnjJx/9XQaNhbiU02TqR7QuTn6ZxBdRAIcx73fUSgNLVsU OkV5AmARLxJa/RJ0gsX9x', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCzzsMMNN1AO7Z5T5VQnL70ZmlTeYNPn0oH50BY4Uabq6nu4x Oe8FylC2mW9AK6djeOtm7OK3UfarA56Z4a eDIkBaeMnH/1dBo2FuJTTZOpHtC5OfpnEF1EAhzHvd9RKA0tWxT46RXkCYBEvElr9E'),
(36, 'CV2I2LM2GA9AA8N30NDJoiJQyNe1TKT6mL zoKHyCb0jxtXmImNTNAMIunvyUEPWk7EXwap3CYA1 9xR9/v1PhnAorYWORh4JJDI7NXxt4rXJ8W2WwMD6PEcQx3LpktfXoFIq Q4j4XWwYJtAC9YIG /m/yVaf2HZjU TkdU61Q mWoOVaeA5YPLeVPkr7kNRrHyElXLXIPq7tbk6OHXaTYjYterNjisnqRm5knfhqvtG4SZ/mVmJ8IAAZN1dulDdEuJJCTyYEKb88kK9DIWZq2QGTKf2ZYUmU9Fjp4zuGSQMBuxCAIfr Iy9XFu4AIkj SQC9RjUmoJwMMdInOMmQ==', 'M/29JFwXYKO5r7UO iYqY9W5qmyI g0XnuLGuPqa/rwkFA480kQjzLNXUuNbjD8i/KS/oTXbTncw7JVP2tOTprBx3o72moRlbXbImOtZPib5y1ZgKTSaL/dxXah8yB85PU BftZqjLP 7es3VscE0BDw9yRsp d3tyKf/yemr0vQQ4aYot9TkRJKgZFYANX6Dd2BsPvNur1EIdPbZum32v7J4ymt8nmVc9gA38TUGvrnUfWkdy95kchGU4KZRL4i6FKW122MXdjm2Q82jI27Zc7EfLhsdSGzQyuIgUZ1tdTVeTnK8bZnixirrnmav61fPXmJIGp2ZgeA2lOWRBslOQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3foZTOaESZG9d6ZTLRjLX14gNw5Ac3CBAqlCH38r HORYcoteNF/DSGW5wGH9GtW9dSlY0c4edr4jPL6ukZwiCaaEVj39kTQYzhccyXEt33yMnZ1wyP4/pBEGKb5TOXaH9jozsaItzzg47Vn 50ZEQ258ya ', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDd hlM5oRJkb13plMtGMtfXiA3DkBzcIECqUIffyv4c5Fhyi140X8NIZbnAYf0a1b11KVjRzh52viM8vq6RnCIJpoRWPf2RNBjOFxzJcS3ffIydnXDI/j kEQYpvlM5dof2OjOxoi3PODjtWf7nRkR'),
(37, 'UOHRkUCf5Sl6sBozUOkCvwTTIo ZruoqCPI84ee8zTvjtkC1/fErFFd7O3miEiu7QbGzW38Qa0APEuFA0ipnLbZXGOeSEtA/N3uAodRaO9u1VazHj2xIYqktADahZbrpeWni uqiW5rwdkRDiGaoD2P26Obza7vsbZ8V9xDL7WD9UwU/vnt/R2MKMscnVPaWhTHoHH4qt4pQYGEThvuPNZxhOkzDUZtFUyWG6RhVMTChWhF2MnGkxcWvhzsqzBDao vS1a0teP5 yiX/VFh23rFLTXj5T61NkFwLgOX e8VvQ1jNgHAOzYLm O/Swxb126LeI2K6Xd8F5kLa4aF/FQ==', 'Huqd5xxPRBZ2dUfjDB65ocKErXlWtzh5/e38ypO997BxZ3rNE prlQGzUi9d0c4iS5lDN5paZj4W8zwsXR5kMAhVKfXubAkQ0B1UQ3DCAuxYAMaAUFfvuL3pwn3SMThLGQaPEBER2IF6isN/ LVn4ALQWsI5YbiMqe5xRVP5DCB3uWilgk2ZUFXUlZiQlj mCtnUDzJvY8F4cAIR9CXRszfefduikoKXLp71MXiqyVaQPb18KimkPdLdoCyghaMjyDb/KUo/d4rG6 8/xXFyZXaJOjRw9SV3FwInLlneejMRDW2TZN9xMI11Hktzu2qjtuJEBmgrO4UVBAxmtb5 7Q==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkcGpRAKOFQXV4BZJP86FlVcKdtdBb6SFsr3/3ukueZ5Gwt2E pHruVZZqxMHd7xMBwVwZTwGHPmx0uOodJpRtWNzhNgwEh0rX6ExZKvTBJqxTLzg7 plG 92KVISXlUbw30lUShMV1XCXYrQKyHdWyPGe021', 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRwalEAo4VBdXgFkk/zoWVVwp210FvpIWyvf/e6S55nkbC3YT6keu5VlmrEwd3vEwHBXBlPAYc bHS46h0mlG1Y3OE2DASHStfoTFkq9MEmrFMvODv6mUb73YpUhJeVRvDfSVRKExXVcJditArId1b'),
(38, 'lZeCfcy865CIzXTSaQGHjbxIUzdSgqmT2RK/b8o1b4XZuMON3cAEmfAlZjOvx8YqlFqIUQvILtfdpQMCmzXtBEf2L8wJ1hkB7OBQ3z/qcKYcGJ4fY8RvwPJzJ/9sEFS22CxtdMquTeZ7IcNxakX2j1fAfyUNycnBf66Xvy3XXDnRdUeho3bIwZrOzlGFdcB6hLWaww0cqgADuVV7nqqVIhS h825UvRTXpZHd0BkY707 gSwGphqyv48vYCLegyNUSPGqHkwumEaBHbQ0MpSsdPNSNsqPbnhfazz6LI052JtytIzOvZNm141WSl9FUlc52UQlb/gg5cPpQdGhbzUEw==', 'xqJJzKmzO2gj5aftVXdrlaVZfylPHhh0Su55HdAouqsg8npwbq6VSjemkN8iD1hT1qDE62qCIagDZ2JR8UOpEFEa85ik5lp/gP67oR4jhONJ72UeKzrrw3Q 685u16mGgrHcguCDs5sGhFfcZ1It5XkkBD3kqZgNftV3YVRfJDI44rFrijtBoiiknkTOjYzlK7uzTvDZvkkl4ruezE1xRlk0u67JkWTHfm09cCq6lqjgiNOQ6ctlbBibZYFda3Rsznyy81/ASYt2tW0FbqFD4hbgKegDqzj8hCrXfPMVObHi8n0EyOelFACzEiXL3gSycJ O4ZwgG/5YbOgHGyw1yA==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzdeVXYVXnxSwKceCHTCgGfLjJ9egReoinBDeBW1kkANq14HUBtF4dL5JqPrGLYFnNcQTryYLsCFqJ P3H6a8Bkg/J24Fd7QnuOrlJssymkAGsQL9Ph2Fa7qEqzOFLA5hQRQnmp0qBM7a9w3LfrvAINQ94CAU', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDN15VdhVefFLApx4IdMKAZ8uMn16BF6iKcEN4FbWSQA2rXgdQG0Xh0vkmo sYtgWc1xBOvJguwIWon4/cfprwGSD8nbgV3tCe46uUmyzKaQAaxAv0 HYVruoSrM4UsDmFBFCeanSoEztr3Dct u8Ag'),
(39, 'Iqw00mjyqGFV6Y0a Dq8E00ICeq5lJ/i6QNCou3kdWow5Dqr7iUp0nhwmvamvHcy47gr6eFlMpzz40o2oAoVqnuXWqUoOf5ZsIMjmZWVzoX6lgvpLmHY63EhfkFtk/S4d0nzC9lAhHyNZrFQ123gkOZVdn60K0qeUD8YXVGlZNRr0zgpTG2YSgAiuRE4obBZWKfnYV8Qso5VKmwbNXBxt290FUIMKoBK1fJ9XF8LVsUKwzAc/60cykE2AzAAAsMxjx4RlGW6/B8gaolIjifZWS8MGh uyI7UQSYp1pkCqkVqwhFvCOX6VUXc3/CUEOy49HyEikfF79gbo37S3z/NhA==', 'LyTHnaIuuD knHQ/HfvhsnmopAu2nisixsiJdy1NNU7TY RhuwF6AQJIfd9IYWBk/ioM/QnXgu20I6iWtjKNV/9GBktR fkT1TSdQBFgrnO4dzZ67KQANmJZg3fwgRJZcUuo/fdY6PkhL7K8n93RKSwh0phUb Bp333eOSToethc1s4GjdLVnbMXiA6054oDSdKSdetX0QSZeYx7S2lILXAkWYLiwQJW/rkmNvqIx3vtiB1bY2bxmauU6huq7jnfuFgO/RScBWQm5UUwtDt6B1RKIrBe8BD/kiWIc5I1GRkAhgwftyd76UxApHG9QtkF9QJRzavYy3DtjJY3X3DfMQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi2l240mSD8yef0oS4W9iSyp6IwJh8qaUVd8infDGqbpKAPv/eCpbBh5m6iKTR/8 MDqMz1lwPdgR5I0KGaWDaHHftbuY00SBmORdJrEe3EJK5s5z21nXZNm/8S3E7/sQ2uFnQLE1vnDf5TLa/B6/O4ZTYwOd', 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCLaXbjSZIPzJ5/ShLhb2JLKnojAmHyppRV3yKd8MapukoA /94KlsGHmbqIpNH/z4wOozPWXA92BHkjQoZpYNocd 1u5jTRIGY5F0msR7cQkrmznPbWddk2b/xLcTv xDa4WdAsTW cN/lMtr8Hr87'),
(40, 'D68RVteSQClJqjTTiMymj1L//tZJCjSq0jjw9cXNYIMsoWlNOCRY nEFkBMfLrNvPv5Dkeu kQ1606 Zjb6LHlMxbW7ollnMVWKtdUV h3PvROEdz 4FLhdDuVKLVZkfZBk6hEYQvwnOj8BwHmKKC0cyq9RnExFhjYsdbZ0NN4Yhy2cvYYw PJMOitJpBN6o8YE02zmvegyJs1dzMOWk2wADgNL sfN7875M61S99cnOAmyIEzj aVHbytWVVELQTFyjHM6kVjU0HJ qokMnHUG4JsJWFHyL6oA9PgPexz82yDzWWG7AVVwW6Frk9wJe1taABlvlv2WE3UrTrWjByA==', 'VAsB lNZA8wGQ htKcC75gH8BZ34 FwdGCA0WwEvo5OFjhbP15kdgV1U4TYZmDiIpZ2UGiXXPAJ9ws8advT3DxAwAYSRs375UogK I0iZeePXqjyn2cPg4ekGTwEyp1jPoFhv6jYTWgMmy/tkBGHNK4M2zT0jd81/vUe7C3lKAufAkhV/cgWeL5IkGrw/LImLWpQ75EnomwgVj7 y88N76ynA1Fn lR3QNTQhtHkeVCTOXV1ZLCC9O64MqxsiVA1xsn9VI5UEWSZE9Ni2ZdvXyFZg8ibvV9Vq0QHdELufevwIu5suAuO30S6f58P1r8mGWrPoQuy9z74Kzz26Us1wQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsvUNtwlp2 7K7M57H1J0iyK2jVnexekfkFV738 TdH2/vHHO9S4kG8YoeJF8YrdJ2/MagzGfTxlMYwms5poquHwkVRjvET4lYWgQPgGgOBn9jIoF8dlrAiT WDLhEiypORvlmOYxzHewpuqKnL2tsSzRisnb', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCy9Q23CWnb7srsznsfUnSLIraNWd7F6R QVXvfz5N0fb 8cc71LiQbxih4kXxit0nb8xqDMZ9PGUxjCazmmiq4fCRVGO8RPiVhaBA AaA4Gf2MigXx2WsCJP5YMuESLKk5G WY5jHMd7Cm6oqcva2x'),
(41, 'q28mlJ0keNT9F4N8eKfsi1OwKX0SBPMjKhHlVr1tYmdqoBt0GTJ2XLFcKwUUFqLh0QAZxjDhE13I0MdHKLTgdUQfy03yUhjSj9zr5JbReZ3UwxAO/PpIN1JaBtiGZnE/CcWAai8rI2ZHWpFKP92uhZg6I/27OzBFoqnHoFIc8pkxGbUeB1KMcM q5/Q4boir EHAFg tWqFE98SWEjNoPRauO/8f3LB3mPmxo4qQisRvub52Ini1GDPK3Xpm9/3uICg73pZ3fCig3xmHNOekytxckUQcbS1RG0Gr/LkFfLtfeoymX6G9gh8LcsyIEwh/gcMKVeFsSIATvyUFXDIlBQ==', 'N57v8oXsIHeKxfoyGDU7Xnz3T9BcPlkfWFoIq 2pxLGSuzRLlLQ0ljNhxzRs4KHQ7LwlLV8LmQe8IKWvLXfZoCChq7c5wTQYFS8KiyG2rKqVcfrh4bkf7ifXu n4D AYpPv3aJ6I0goh691iy1I/GW80oLGAtqihoIFXnJF6EGx1n LHER2QgFx0RPmxvfP5IWdAc8jBD3IKLiadgqh5HCUChwr9I3UN19kp3t7Ie2b2cU8gQwt1Sh3fC6H Y3gf2PgxDs3f8oI9s8VLDgOGeHnLHdK3WG5qNUlL1jUA3x5AzJIpFLmyL4ayfaFqrKk/5iy8n5DLy077h3imUCKqvA==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA01pynG 9nlN6MPSYRnobA4ZESvvpbW55VkpP4hfBdGvq /ZAfvfjl24livbnl6Csjfn02G/ChzH0Od6c7nC bq5gfYby7KXhcwhI8gl3IR3sxvLKPAxDkHIoPYqmW a5H5Ke gvoxbAxjb/uZVE5XOcCpfug', 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDTWnKcb72eU3ow9JhGehsDhkRK  ltbnlWSk/iF8F0a r79kB 9 OXbiWK9ueXoKyN fTYb8KHMfQ53pzucL5urmB9hvLspeFzCEjyCXchHezG8so8DEOQcig9iqZb5rkfkp76C jFsDGNv 5lUTlc'),
(42, 'oIKLAVC3A/Gdse2BaI8y7lQp1jm4yl33rHi3ne8A9hyWGY6gh0CpOilVOmJpUYrgxRzdYK74z7Fjk64dunuw7oleyAy6YpnEF7WVYJENzldxf4D/VuWHTXFiP3ioCb3/Npu7V4jku7jtddVjef4LCMVR/4rng0JP2hGWKPqr4s6NKSDKvWPeDj7jSxLKOaKsFDYI6KevbTwAZ 27qM001DZ7TPq1QiPtcceMlPeP5dVGbWkSWXYTvKG/HX2VeIfourRKvXGsH1HaGVvXgMjOunveF5Iy2mfz1rGLZeoGfv1GIBvCIl/PwaXq sL4vsBX6Rc0Qcef 1Lc8UeBHkhR4Q==', 'ZOHvod8dL85U06eUUxRFchu6CcnUazAVOlX/ghoLec6f17fkl/0dIpRg4nKvNKQE9Ll6gurs7rVGqwbEr9Ksu4f4gO/Z7vlFdv3kXaNFuDYVk4iykpLoMmHDVhBC/RKBDTuWqF8IECrmKBMzL20BlqWQZNfylV6Omhn/mKUgnp4DOyhoU1xHRcG/HIXA1RlNs25xMgsmppaQd3f95uo2VXZI8aD5xsSZ9/kvkF7GphPel8XoUxqdoDj6QwVc6ix tCYKhq XlGmrbd9azagwX6QEE3x0fzcJkWWOU3QNApIpQlCWVcWHDTdewDIs2e 6S1VNcUV5kRJV5INbC31SRw==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1mT6QnixvwR1XlLIpyCPEkJP0zp4yNPXUwOE5EHTDlesEh/rLdNUwmr8/3OQZWJEX3y7a/b4itTe BA7mpSOl3pPiIuCYLEmJTciXB33STpPO3 2SoaxP8LOhHLNYDaThukCIx7xzRemjAeyXxqHPVSHNz9n', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDWZPpCeLG/BHVeUsinII8SQk/TOnjI09dTA4TkQdMOV6wSH st01TCavz/c5BlYkRffLtr9viK1N74EDualI6Xek Ii4JgsSYlNyJcHfdJOk87f7ZKhrE/ws6Ecs1gNpOG6QIjHvHNF6aMB7JfGoc9'),
(43, 'asLP8THV2zrYoPg4quYg6gD/yqfDGVsphTgLwLlLlSN2RQSqhSWrPdD3ahsUe2ArYiOjLYOQWa1aGK4N7dro8rBLlZ aIvGHanO63mRxhttPjNwvhPaUJjbvLNKmL 2nBMeoUCCgUxOdSIOvguETK01iBY9BgHVvGWgZYMtQIpHgTxEua/g7pawrVTy3KfNNAHHbq27lR N7HGLCqpUAP0aDxGxPvjuSYRuzj/n73frHOIdrLMuwzNCgT3MqkUfu4uMC5yJnr4g26/yD7GByzh7 P4/7HM9M9a 2nEzLMFL492PNQfu0vw5oRWdkNQa46T9rWlmGbTdk2c5gfy0vXA==', 'F0PN7nd cacU2OZhl6AOk3vU12Hck8Txmtct0kXfrFhH7XodipG/PLy0a4PguooiQKPYEzaTzV/sml1fPX6bQjorgtkaUpmWUggHFCD0MgkpGW1iupMHfe4/FyYCf3Bzu5cWlGwnhNIJQh978uwvQlzd/VJOLsS6t7GzRkxm1Lu8KYfjSQ8U OSFdYSpKKNijLvkIHrWZ1ur9o4Gh5SopLdL23YXEGWSWZ9MrcNNwn9UGW4icPm86MQdSySYWPg9oT4xH3P0rKwa/WVzogyv3bzjQQxIPv1viAtUXeTpjGjGStn6THNrVgFPtMBIu8vX4lpn55WKNaQbYsXjwWWw/A==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjlmqbKnF4Y6n1PP/TLyRPq9ROqMd5VhiZstVwGXNwAXuWGAsNQOre8yr51qeuN0l7U/Co3BzgtHBLQKXDPJbFlsn6DfPQdD37VxuscwwXbveXuo2uvB4kWYh0QnqngtEEDIaac6 J5pURN1r sivEg/6IW1b', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCOWapsqcXhjqfU8/9MvJE r1E6ox3lWGJmy1XAZc3ABe5YYCw1A6t7zKvnWp643SXtT8KjcHOC0cEtApcM8lsWWyfoN89B0PftXG6xzDBdu95e6ja68HiRZiHRCeqeC0QQMhppzr4nmlRE3Wv6yK8S'),
(44, 'DVyCV9xDAm84x mgzwt2Q7q5BwR6zmOMY U7 rbbq3WpuypSoc2gj4wZYWOkuvHJxUDC4maJ D67P70W6Rva4t3eIzMfFUx cCyf1CtewkZoTziZLHLZkedzkeyEFCwTKmhxZ Pj0yyNbHA kOoO6pZ9c87zA9RqzZsoOcSk3TXXom3itfSwLC6Q6qrnlMsq49ZLUtDUJCtQQlm89taWUz9fBL2dnRl29tz45S/QK8h4FH6TeJCUYdQ4YblUSpIMeXQ1Z5REtM73lUETet1zgIxcdSEw1IbHv6qgdZVs1reizjb3PV9TE/3XYWXu7XIt5Il3EqHJf7voOjjFF7/Vig==', 'cd99TiVfwDFn3FGTW1nBsGT82sTJLz 0h5Oj7giIqv312HedccPZLIV4iuZ35 1VlrMMeXBctG/Ieqp6XSiCBIPK4it89rIFwuvXgx7A T6RiGkwVRKzYyLD3t1w4d2DCRrkT2drxNQRVTOboaiPNHyJOJpkQjoRjnh qV5hKVfWacOJ/EFD8 8Bm4C5I374pxEap YFkAaQq26t5l0qXFE9OoPVRZ4McTXwKzV8mNVZB hBxNenAajMG4VhQFrg9PIZkiHXY1xukACy0rKYSgXOCO87mvkxzTAiXoJBTs7uxZfJn7OL70aOgHAW3drfK3BZGs0NNzokgGt/2OMagw==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlByZRCzJyrCAgiyU2NleksB/PBE6V6EcOUwpxBWt QuD/0sae1OAEr6Tr95swZOgNjh15gCQG1O hXNfC8268bAAY4bmzQBtW3tIOZyw0v9NhDxILCpWAqaIQ0sFeqZP8jl6WLmwG7ikxf3HvJ8spgUkUNXn', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCUHJlELMnKsICCLJTY2V6SwH88ETpXoRw5TCnEFa35C4P/Sxp7U4ASvpOv3mzBk6A2OHXmAJAbU76Fc18LzbrxsABjhubNAG1be0g5nLDS/02EPEgsKlYCpohDSwV6pk/yOXpYubAbuKTF/ce8nyym'),
(45, 'lT9OVy6FiK9l2k26J9m95LdPNEFPGD6m4zKqYcKtWQitor2/2Bygak0cjNSsPscF6zNV67kn/Vr3MnYukhA7Z9m9ipr8PrOPxIKxbF8btM3J040tyiXG7NZGOBEVyh1roGzJ1ZEO3AmHkJE4uK7PdPSxaOqHDPVyuRnEoWIfJAGy7P0Wcnt0g0G5zmJKEfra9ZnlHYdeYo GDO5G9vuF9wW3osEwyT5Ct/AUd0PWhFr/Y MjRJuTB IWNpmY SVAR4ViYJFekRIMtpDRqjl0blCqFgrRKFxkb4BY618JlPJSoqTYmVSzRa1S3/lFx7G7vqDqb6/qsPWj8suYDogqHw==', 'CKWFBm2U1nu8qAWdNO5Nk2S9AfVofRwoN/lk0HsQWQeACXb/FJCeGg0Va9tpnFnRuzVMeggMGtZqkhrU8scSXxVEun D534VmaqT1KHhKJU7f8cxmNISxt55Hau0l89AgOdAMG pozmJj4WXdTClgLlfeWM85yYP8QuQKyo71vL/6F8ChQmMOrLswAideyUTvFM5 1ONxHcsg2G/6Za1e00sJeFw PW5NPGj1l PzxZIM29vZuMQPZ8M86lDRNPtuep/Ssr8rVKWRHHZMftc5B015lTCpb7edjouKjS cRBUoumJi9 tbYOWWSkTqp22Crh EjTGb6MGkHaz7 zL3w==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2ulr37MV2tLQXoH 0Xzf6lw9E4csySLk0SYwdFUWOY2aCrl2p3Gbzt9r2LWeNEIGMiQAsvW9AL/gAwOJcpw75eEyGZ031HWxDRocknhxss5F/LCU SK yYuCzy0tDPyI0zhiFsilA dOjitWKIIzBr1CgiWj', 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDa6WvfsxXa0tBegf7RfN/qXD0ThyzJIuTRJjB0VRY5jZoKuXancZvO32vYtZ40QgYyJACy9b0Av ADA4lynDvl4TIZnTfUdbENGhySeHGyzkX8sJT5Ir7Ji4LPLS0M/IjTOGIWyKUD506OK1YogjMG'),
(46, 'fQuhJr3qahQQUtF6L5xFYmVzqegQTo2 e1Gnl/NEdtv6PWDAYMLuE6oR5vVvGEfcsdtaVNqAVb0Qe2RxJMsB8uNj75OnIlZFuWFUCodOKui0Fgs5s5vyhcbcKh2OXMR64uAVEfrQ7Hu0crhIHRXtqDyxGN6kVIGpikUiZwf9djM=', 'J1 HqOkwodz gHRF PMsgStyvrptKVahfM23En2/Z0bXIdt96FMUUjYLp 9hFhyVqZeW2ZkOZgwg0lQhneqXMFhSYFs4WCr/TpjHbXmvbRRnNdeHJ1Dh3G8v9ZvsKqAafFVflhfkHqGsa4w8WERNOxKRpqPsquMWgWws08b6p0o=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(47, 'N1fg/wRUGdlN6gIaLqNkgWT2cl5bTFWLfIK9lQslpcnhOiNUzt0ggRIDyJjubNuMiV/9ewh7mQ AMA9OfyLVUDPIrBxuLpjEyIfCsSKuybKoIgdt/yYea75P754jetqGgtchKtdftsrtD6YLjREOuq9x5H4L6HEnu6O2GR3dwvs=', 'C3jP ZnFXCXRS9P5y1sPFX523ESqSOOkdmtRZc5wNQurFKl7Eavz0gD3CtzCj3IwxA3OD4X/bJlR41qPb8LCmGj7g/j0Lc5YsHsJpEE ugBWpf2oNMn5trVdouWfTc5wRzHlvTJ3f3FkIINrMQy8qVbii8UBC26BDWhpMY x5AY=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(48, 'jHrtcVQrsk58avfPH7Xj1UtQ//IXRwE8UU9HJjc9ZsHeZvRAczMHHR/KfUdLmTGLe7zVeb1sGs/sEVzluqOvJugoHrCaOToEHU bMnoeHbViSIaG2DSbajoe3LjP8rLSMG3jgOl8kGBp4uAEgXhqIYTtdma8 081Akl KE87tdg=', 'cfzfSV/mjuE2oybMEBLR iUxMlo2fN/tkMf8mcgPXNKtacMtC8reMGOM9EzgnMnRvF0GbV3ByK7aAcdudQSeGYx7Dwy7IP6rAZVpV4n91R1dKamku2AQk7HcRp1UvRuLxlMzfV4vbJcLVsIW3 0PRqtxc1THnSChUeTIrumZ3F4=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(49, 'PVB1kB7WFNHQ6Zqd1vAoujMIQ4V9ohi8g38RuO/ExfNaO+UIpeSsR2JUCd+kBy/a+OhwK6p2dlXttzbMkc4NqcyDMpYNiPCEiwk0y1MpKbX2W0XCLQtO0lUoWw5czq3NtcSEtNmtZg9+aGdbf6sjPLnzlDzJZOOtIkVBZ3disZA=', 'gcr/vqASI3bxst DkHEHln63ZaTUWXH3PTwjGU60MjCqDssxSdQtKJ8fTKKEyvTQ8eK62HsrSUrbjKTIxOMRCVSeq/SNFT4sGzocXzAd01RWZm1bPFtvkcmbvUJf8dbMz fVEOKtHw8TiGuWSLACAz9TLdT/rd3SZg8TT0Okm8A=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(50, 'O9U9QQX/+Sc9BaSBVJHsqn9OtfDimuuf1v2Tue+zLjsz6jIXdG/M2btRr3Eph0puSP+nHx63X3+HlMVKEoaFWNTp9t0viV+RI5rAd4RB8lBDpGq475NKJgWc1VGJWZkUPwx48NPolRQa2ibinmWln6tsknshbriMIPyp/mg+Yps=', 'LLemusvOL0uZJHgDGac4UK5Wo/Ji1jSeCcY0TxEfIq5rKf8HKlK9kVfM/U9l6Le4hgJmZh3Dfr66ANinzBjLdUcKNGwPLb9rlPP0fipY1G0FxKH/OEaV2b2lvpqEUxdcbSkYCV1BuF0TPXxCaCHZSuoj6K7Prdv7/mxLD4jW098=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(51, 'V9PlseL65bZKOJ/V6XwVTIXsV1VpMqr/+AdRVvifIchRm4MAtgLI2QPfe1mMP8WRHnxG3kdvS1Zz2q398Kqc4egDKvlDp46tSC+LazgFiTNTIGyoNJlcjSqQaENgruuPh1AvZkb9d6lL1/KMO9YhtUuNFGqzdFoRqqIq1aCG3QU=', 'fTV7Bju41KdRRyAAFhMtc6Spu39SYn16vYqV6F ttArQGz8wQyoS90zIelNxl1XcBxUqyLzLgs345Ja2lOiqTSFs3EoZwHo1l6rQcZpYGB8fzDZgzne0WOiNUsEIYfBVPB13zmKxWgQch8BYiJ42c3VuvQDf/ESTa6PFa04K2uk=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J'),
(52, 'K+CEuG+jHD9+ZPzxo3JEuKJg9jl+R34Gy7xNen+vLl0c4F9cNfnUzy/XprZYkE0F/Xt68S8DDI0k9yIVChFmD2B3d+PvaUP3dhAAaD+Sgb3W1w4PyZb2GE8H91AGIabiyXtTrfaX6PA6cEu/1fodOdP7c+LFy1RU1+UvGmKY5QA=', 'TuaCAVUnXfQF8QHf8VzF/5 r4nCr5o5xo2Zwwi9 bRY7f5br1luozMt GNzUPbYPJrnCtsoeiudlqC23DmCK5FLjp4FqfL2icH Bh5sFXUgaq0 B1O3cyUj3NuYcd07MsdXqzROo8TB9QgHNR5k98W0uyxXXSp0xBIZYua4urvU=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYQYM3FwZuQNLK7xRbuBbAcviy1vl9LB//Ubz NFSBjgrrGNPwqgOuWF1qskBOY0AnoAZpwHlWEryvtz1OGNX5q9boqrhOrGQebJfek9JGvjysz3 KCqAIup8C1Enp4 cUxYy7BRorjF6wqTAjyJn/SQVZPPUyVeN1', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJhBgzcXBm5A0srvFFu4FsBy LLW X0sH/9RvP40VIGOCusY0/CqA65YXWqyQE5jQCegBmnAeVYSvK 3PU4Y1fmr1uiquE6sZB5sl96T0ka PKzPf4oKoAi6nwLUSenj5xTFjLsFGiuMXrCpMCPImf9J');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalregister`
--

CREATE TABLE `hospitalregister` (
  `id` int(50) NOT NULL,
  `hospitalname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `specialties` varchar(50) NOT NULL,
  `exp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitalregister`
--

INSERT INTO `hospitalregister` (`id`, `hospitalname`, `place`, `contact`, `specialties`, `exp`) VALUES
(1, 'jo', 'trichy', '88945495845', 'ice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalregister1`
--

CREATE TABLE `hospitalregister1` (
  `id` int(50) NOT NULL,
  `hospitalname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `specialties` varchar(50) NOT NULL,
  `exp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitalregister1`
--

INSERT INTO `hospitalregister1` (`id`, `hospitalname`, `place`, `contact`, `specialties`, `exp`) VALUES
(1, 'jo', 'trichy', '88945495845', 'ice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE `userreg` (
  `uid` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`uid`, `name`, `gender`, `dob`, `contact`, `email`, `address`, `password`) VALUES
(1, 'sam', 'Male', '02/8/2022', '8124436310', 'sam@gmail.com', 'trichy ', '123'),
(2, 'sathish ', 'Male', '10/10/1990', '8124436310', 'sathishfantazy@gmail.com', 'trichy', '123'),
(3, 'sathish ', 'Male', '18/10/2022', '8124436310', 'tsathishsec@gmail.com', 'trichy', '123'),
(4, 'sathish ', 'Male', '18/10/2022', '8124436310', 'sathish@gmail.com', 'trichy', '123'),
(5, 'karan', 'Male', '22/10/2009', '8521470963', 'karan@gmail.com', 'trichy', '123'),
(6, 'joyal', 'Male', '25/10/2001', '852984125', 'jo@gmail.com', 'trichy', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodavailable`
--
ALTER TABLE `bloodavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bags`
--
ALTER TABLE `blood_bags`
  ADD PRIMARY KEY (`bagid`);

--
-- Indexes for table `blood_donar`
--
ALTER TABLE `blood_donar`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `checking`
--
ALTER TABLE `checking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalregister`
--
ALTER TABLE `hospitalregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userreg`
--
ALTER TABLE `userreg`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodavailable`
--
ALTER TABLE `bloodavailable`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_bags`
--
ALTER TABLE `blood_bags`
  MODIFY `bagid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_donar`
--
ALTER TABLE `blood_donar`
  MODIFY `d_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `rid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `checking`
--
ALTER TABLE `checking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `hospitalregister`
--
ALTER TABLE `hospitalregister`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userreg`
--
ALTER TABLE `userreg`
  MODIFY `uid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
