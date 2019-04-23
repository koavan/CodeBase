-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.40-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for codedriver
CREATE DATABASE IF NOT EXISTS `codedriver` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `codedriver`;

-- Dumping structure for table codedriver.problempool
CREATE TABLE IF NOT EXISTS `problempool` (
  `ID` varchar(30) NOT NULL,
  `pblmName` varchar(50) NOT NULL,
  `question` text NOT NULL,
  `description` text NOT NULL,
  `complexity` varchar(50) NOT NULL,
  `pblmType` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pblmName` (`pblmName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table codedriver.problempool: ~12 rows (approximately)
/*!40000 ALTER TABLE `problempool` DISABLE KEYS */;
REPLACE INTO `problempool` (`ID`, `pblmName`, `question`, `description`, `complexity`, `pblmType`) VALUES
	('birdFreq', 'birdFreq', 'Write a program to find frequency of occurrence', 'testingggggggggggggg', 'MEDIUM', 'SELF'),
	('pattern01', 'starPatternNormal', 'Write a program to print star pattern ', '    *\n  ***\n*****', 'EASY', 'SELF'),
	('ps-array-01', 'missingNumber', 'Find the Missing Number', 'You are given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in list. One of the integers is missing in the list. Write an efficient code to find the missing integer. If no number is missing print -1.\n\nFile / Class name should be "missingNumber".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer which is missing in the array\n\nSample IO : \nInput :  \n7\n1 2 4 6 3 7 8\n\nOutput :\n5', 'EASY', 'SELF'),
	('ps-array-02', 'nonRepeatNum', 'Print the unique element which is not repeated.', 'There is an integer array with duplicate elements. Print the unique element which is not repeated. If more than one elements are found unique print the one with the least value.\n\nFile / Class name should be "nonRepeatNum".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer from the array which is the unique number\n\nSample IO : \nInput : \n9\n1 1 2 2 3 4 4 5 5 \n\nOutput : \n3 ', 'MEDIUM', 'SELF'),
	('ps-array-03', 'kthSmallest', 'Find the k-th smallest element', 'How to find kth smallest element in an unsorted array?\nYou are given an unsorted array of numbers and k, you need to find the kth smallest number in the array.\n\nOne way to solve this problem is to sort the array in ascending order then pick the k-1th element, that would be your\nkth smallest number in array because array index starts at zero, but can you do better?\n\nFile / Class name should be "kthSmallest".\n\nInput Format :\nN - size of the array\n\'N\' integer values\nk - smallest number corresponding to the index in ascending order.\n\nOutput Format : \nSingle integer from the array which is the unique number\n\nSample IO : \nInput : \n6\n10 2 5 3 9 4\n2 \n\nOutput : \n3', 'MEDIUM', 'SELF'),
	('ps-array-04', 'commonElements', 'How to find common elements in three sorted array?', 'Given three arrays sorted in non-decreasing order, print all common elements in these arrays.\n\nFile / Class name should be "commonElements".\n\nInput Format :\nN1 - size of the array1\n\'N1\' integer values\n\nN2 - size of the array2\n\'N2\' integer values\n\nN3 - size of the array3\n\'N3\' integer values\n\nOutput Format : \nSet of integers common to the above arrays.\n\nInput : \n6\n1 5 10 20 40 80\n5\n6 7 20 80 100\n8\n3 4 15 20 30 70 80 120\n\nOutput : \n20 80', 'MEDIUM', 'SELF'),
	('ps-array-05', 'firstRepeating', 'Find the first repeating element in an array of integers.', 'Given an array of integers, find the first repeating element in it. We need to find the element that occurs more than once and whose index of the first occurrence is smallest.\n\nFile / Class name should be "firstRepeating".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer from the array which is the first-repeating\n\nInput:  \n7\n10 5 3 4 3 5 6\n\nOutput: \n5', 'MEDIUM', 'SELF'),
	('ps-array-06', 'subArrayZero', 'How to find if there is a sub array with sum equal to zero?', 'Here you are given an array of positive and negative numbers, find if there is a sub-array of continuous elements with 0 sum.\n\nFile / Class name should be "subArrayZero".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \ntrue - if sum of any sub-array of continuous elements is zero\nfalse - otherwise\n\nInput :\n5 \n4 2 -3 1 6\n\nOutput: \ntrue ', 'MEDIUM', 'SELF'),
	('ps-array-07', 'arrayRevInPlace', 'How to reverse an array in place?', 'You need to write a program which accepts an integer array and your program needs to reverse that array in place, which means you cannot use additional buffer or array, but one or two variables will be fine. \n\nOf course you cannot use any open source library or method to directly solve this problem and you should not print the array in reverse directly. You need to create your own logic\n\nFile / Class name should be "arrayRevInPlace".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nInput array in reverse order\n\nInput : \n7\n10 5 3 4 3 5 6\n\nOutput :\n6\n5\n3\n4\n3\n5\n10', 'EASY', 'SELF'),
	('ps-array-08', 'valueInIndex', 'Rearrange an array such that arr[i] = i', 'Given an array of elements of length N, ranging from 1 to N. All elements may not be present in the array. If element is not present then there will be -1 present in the array. Rearrange the array such that A[i] = i and if i is not present, display -1 at that place.\nFile / Class name should be "valueInIndex".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nInput array in proper arrangement\n\nInput : \n6\n6 1 9 3 2 4\n\nOutput : \n-1 \n1 \n2 \n3 \n4 \n-1 \n6 \n-1 \n-1 \n9', 'MEDIUM', 'SELF'),
	('ps-array-09', 'arrangeOneZero', 'Segregate 0s and 1s in an array', 'You are given an array of 0s and 1s in random order. Segregate 0s on left side and 1s on right side of the array. Traverse array only once.\nFile / Class name should be "arrangeOneZero".\n\nInput Format :\nN - size of the array\n\'N\' integers(0 or 1)\n\nOutput Format : \nInput array in left-right arrangement\n\nInput :\n10\n0 1 0 1 0 0 1 1 1 0\n \nOutput :\n0 0 0 0 0 1 1 1 1 1 ', 'EASY', 'SELF'),
	('ps-array-10', 'rotateArrayNTimes', 'Rotate Array', 'Given an unsorted array arr[] of size N, rotate it by D elements (anti-clockwise). \n\nNote : Save the file / class as “rotateArrayNTimes” with appropriate file extension.\n\nInput: \nThe first line of the input contains T denoting the number of testcases. First line of eacg test case contains two space separated elements, N denoting the size of the array and an integer D denoting the number size of the rotation. Subsequent line will be the N space separated array elements.\n\nOutput: \nFor each testcase, in a new line, output the rotated array.\n\nConstraints:\n1 <= T <= 200\n1 <= N <= 107\n1 <= D <= N\n0 <= arr[i] <= 105\n\nExample:\nInput:\n2\n5 2\n1 2 3 4 5 \n10 3\n2 4 6 8 10 12 14 16 18 20\n\nOutput:\n3 4 5 1 2\n8 10 12 14 16 18 20 2 4 6\n\nExplanation :\nTestcase 1: 1 2 3 4 5  when rotated by 2 elements, it becomes 3 4 5 1 2\n', 'MEDIUM', 'SELF'),
	('ps-logic-01', 'maxMoney', 'Find the Maximum money', 'Given street of houses (a row of houses), each house having some amount of money kept inside; now there is a thief who is going to steal this money but he has a constraint/rule that he cannot steal/rob two adjacent houses. Find the maximum money he can rob.\n\nInput:\nThe first line of input contains an integer T denoting the number of test cases.\nThe first line of each test case is N and money.\n\nOutput:\nPrint maximum money he can rob.\n\nNote : Save the file / class as “maxMoney” with appropriate file extension.\n\nConstraints:\n1 = T = 100\n1 = money = 100\n1 = N = 1000\n\nExample:\nInput:\n2\n5 10\n2 12\n\nOutput:\n30\n12\n', 'EASY', 'SELF'),
	('ps-loops-01', 'countXInRange', 'How Many X\'s?', 'Given an integer X within the range of 0 to 9, and given two positive integers as upper and lower bounds respectively, find the number of times X occurs as a digit in an integer within the range, excluding the bounds. Print the frequency of occurrence as output.\n\nNote : Save the file / class as “countXInRange” with appropriate file extension.  \n\nInput:\nThe first line of input is an integer T, denoting the number of test cases. For each test case, there are two lines of input, first consisting of the integer X, whose occurrence has to be counted. Second, the lower and upper bound, L and U which are positive integers, on the same line separated by a single space, respectively.\n\nOutput:\nFor each test case, there is only one line of output, the count of the occurrence of X as a digit in the numbers lying between the lower and upper bound, excluding them.\n\nConstraints:\n1<=T<=100\n0<=X<=9\n0<L<U<=10^5\n\nExample:\nInput:\n2\n3\n100 250\n0\n20 21\nOutput:\n35\n0\n\nExplanation:\nIn the first test case, the occurrence of 3 in the numbers starting from 101 to 249 is counted and comes out to be 35.\nSimilarly, for all the other test cases, the occurrence of the given number X is printed as output.', 'MEDIUM', 'SELF'),
	('ps-loops-02', 'minDifferencePair', 'Find the Minimum difference pair', 'Given an unsorted array, find the minimum difference between any pair in given array.\n\nNote : Save the file / class as “minDifferencePair” with appropriate file extension.  \n\nInput:\nThe first line of input contains an integer T denoting the number of test cases.\nThe first line of each test case is N, the size of array. Second line of the test case is the Array.\n\nOutput:\nPrint the minimum difference between any two pairs.\n\nConstraints:\n1 <= T <= 30\n1 < N <= 100\n1 <= arr[i] <= 100000\n\nExample:\nInput:\n2\n5\n2 4 5 7 9\n10\n87 32 99 75 56 43 21 10 68 49\n\nOutput:\n1\n6\n\n', 'MEDIUM', 'SELF'),
	('ps-strings-01', 'wordTwiceCounter', 'Twice counter', 'Given an array of n words. Some words are repeated twice, we need count such words.\n\nNote : Save the file / class as “wordTwiceCounter” with appropriate file extension.\n\nInput:\nThe first line of input contains an integer T denoting the number of test cases. Then T test cases follow. Each test case contains an integer n denoting the number of words in the string. The next line contains n space separated words forming the string.\n\nOutput:\nPrint the count of the words which are repeated twice in the string.\n\nConstraints:\n1<=T<=105  \n1<=no of words<=105\n1<=length of each word<=105\n\nExample:\nInput:\n2\n10\nhate love peace love peace hate love peace love peace\n8\nTom Jerry Thomas Tom Jerry Courage Tom Courage\n\nOutput:\n1\n2\n', 'MEDIUM', 'SELF'),
	('TP01', 'TestProgram', 'Sum of two numbers', 'Write a program to find the sum of two numbers', 'EASY', 'SELF');
/*!40000 ALTER TABLE `problempool` ENABLE KEYS */;

-- Dumping structure for table codedriver.testcasepool
CREATE TABLE IF NOT EXISTS `testcasepool` (
  `TCID` varchar(30) NOT NULL,
  `tcName` varchar(50) NOT NULL,
  `tcCount` int(11) NOT NULL DEFAULT '1',
  `pblmIDs` varchar(350) NOT NULL,
  `input1` text NOT NULL,
  `output1` text NOT NULL,
  `sample1` bit(1) NOT NULL DEFAULT b'1',
  `input2` text,
  `output2` text,
  `sample2` bit(1) DEFAULT b'0',
  `input3` text,
  `output3` text,
  `sample3` bit(1) DEFAULT b'0',
  `input4` text,
  `output4` text,
  `sample4` bit(1) DEFAULT b'0',
  `input5` text,
  `output5` text,
  `sample5` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TCID`),
  UNIQUE KEY `tcName` (`tcName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table codedriver.testcasepool: ~12 rows (approximately)
/*!40000 ALTER TABLE `testcasepool` DISABLE KEYS */;
REPLACE INTO `testcasepool` (`TCID`, `tcName`, `tcCount`, `pblmIDs`, `input1`, `output1`, `sample1`, `input2`, `output2`, `sample2`, `input3`, `output3`, `sample3`, `input4`, `output4`, `sample4`, `input5`, `output5`, `sample5`) VALUES
	('ARR-ARRANGE-1-0', 'ArrayArrangeOneZero', 2, 'ps-array-09', '[10,0,1,0,1,0,0,1,1,1,0]', '["0 0 0 0 0 1 1 1 1 1 "]', b'1', '[15,0,1,1,0,1,1,1,0,0,0,0,1,1,1,0]', '["0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 "]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-COM-ELMNTS', 'ArrayCommonElements', 2, 'ps-array-04', '[6,1,5,10,20,40,80,5,6,7,20,80,100,8,3,4,15,20,30,70,80,120]', '[20,80]', b'1', '[8,11,15,21,35,44,78,89,110,5,6,7,11,15,100,7,3,4,15,20,30,70,100]', '[15]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-FIRST-REPEAT', 'ArrayFirstRepeating', 4, 'ps-array-05', '[7,10,5,3,4,3,5,6]', '[5]', b'1', '[9,1,1,2,2,3,4,4,5,5]', '[1]', b'1', '[11,5,6,11,3,4,1,2,2,3,12,9]', '[3]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,4]', '[4]', b'0', NULL, NULL, b'0'),
	('ARR-KTH-SMALL', 'ArrayKthSmallest', 3, 'ps-array-03', '[6,10,2,5,3,9,4,2]', '[3]', b'1', '[11,25,81,11,3,7,43,2,4,37,12,9,7]', '[12]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18,17]', '[17]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-MIN-DIFF-PAIR', 'ArrayMinDiffPair', 3, 'ps-loops-02', '[2,5,2,4,5,7,9,10,87,32,99,75,56,43,21,49,10,68]', '[1,6]', b'1', '[3,8,13,27,8,41,35,3,11,47,11,89,54,77,31,24,68,19,45,10,49,17,15,15,12,7,3,10,6,1,11,2,8,9,13,4,14,5]', '[2,2,1]', b'1', '[5,25,272,213,334,153,245,338,216,281,379,327,210,309,164,496,171,150,147,335,413,474,450,473,446,306,192,30,137,113,483,61,248,415,372,410,311,405,251,186,167,363,429,218,446,132,356,256,58,150,367,65,492,315,349,236,74,91,35,536,827,585,681,225,662,900,852,569,355,130,724,721,804,334,478,192,833,195,233,797,771,246,87,811,903,802,714,630,105,487,175,498,180,632,10,1103,1369,3680,3771,2582,3452,1238,2569,2355,1576,50,1090,1942,9251,3026,8718,5534,4959,1682,1937,2533,4219,9854,4016,6819,8620,7503,568,1849,6620,360,2198,4367,8433,8904,598,9362,5719,1686,4981,2889,8863,5620,6075,364,4286,8444,5232,4584,2805,7286,6429,7815,6645,1181,1691,1273,9268,5579,3130,5629]', '[1,3,2,13,4]', b'1', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-MISS-NO', 'ArrayMissingNo', 3, 'ps-array-01', '[7,1,2,4,6,3,7,8]', '[5]', b'1', '[11,7,11,3,9,2,5,6,12,1,8,4]', '[10]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18]', '[-1]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-NO-REPEAT', 'ArrayNonRepeat', 3, 'ps-array-02', '[9,1,1,2,2,3,4,4,5,5]', '[3]', b'1', '[11,5,1,11,3,5,1,2,2,3,12,9]', '[9]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18]', '[1]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-REV-PLACE', 'ArrayReverseInPlace', 3, 'ps-array-07', '[7,10,5,3,4,3,5,6]', '[6,5,3,4,3,5,10]', b'1', '[9,1,1,2,2,3,4,4,5,5]', '[5,5,4,4,3,2,2,1,1]', b'0', '[9,5,6,11,3,4,1,2,12,9]', '[9,12,2,1,4,3,11,6,5]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-ROTATE', 'ArrayRotateNTimes', 2, 'ps-array-10', '[2,5,2,1,2,3,4,5,10,3,2,4,6,8,10,12,14,16,18,20]', '[3,4,5,1,2,8,10,12,14,16,18,20,2,4,6]', b'1', '[4,10,3,44,38,46,5,27,15,35,18,47,39,18,8,81,32,5,29,50,10,49,104,77,98,2,74,94,47,0,99,39,58,106,44,53,26,18,19,26,56,23,75,91,43,14,42,54,71,37,26,7,21,8,70,65,64,80,47,90,91,18,16,51,69,83,84,95,55,29,20,102,94,8,40,50,105,39,22,1,49,11,79,6,14,100,54,10,87,44,94,97,90,103,83,32,81,96,0,42,64,72,104,13,57,80,52,88,20,87,80,93,86,32,46,64,80,101,84,53,30,73,30,28,100,103,92,53,99,95,45,54,64,85,16,33,61,68,22,36,87,51,10,16,16,4,68,15,35,53,40,78,14,86,97,80,89,80,99,33,65,100,24,51,18,74,79,66,104,66,26,78,0,64,1,101,53,80,53,25,41,26,79,27,80,11,54,75,67,53,102,20,56,0]', '[5,27,15,35,18,47,39,44,38,46,77,98,2,74,94,47,0,99,39,58,81,32,5,29,50,10,49,104,1,49,11,79,6,14,100,54,10,87,44,94,97,90,103,83,32,81,96,0,42,64,72,104,13,57,80,52,88,20,87,80,93,86,32,46,64,80,101,84,53,30,73,30,28,100,103,92,53,99,95,45,54,64,85,16,33,61,68,22,36,87,53,26,18,19,26,56,23,75,91,43,14,42,54,71,37,26,7,21,8,70,65,64,80,47,90,91,18,16,51,69,83,84,95,55,29,20,102,94,8,40,50,105,39,22,86,97,80,89,80,99,33,65,100,24,51,18,74,79,66,104,66,26,78,0,64,1,101,53,80,53,25,41,26,79,27,80,11,54,75,67,53,102,20,56,0,16,16,4,68,15,35,53,40,78,14]', b'1', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-VAL-INDEX', 'ValueInIndex', 2, 'ps-array-08', '[6,6,1,9,3,2,4]', '[-1,1,2,3,4,-1,6,-1,-1,9]', b'1', '[9, 7,3,15,1,10,9,13,2,4]', '[-1,1,2,3,4,-1,-1,7,-1,9,10,-1,-1,13,-1,15]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARRFREQ01', 'NumFreqInArray', 2, 'birdFreq', '[6,1,2,5,2,4,2]', '["Bird with highest frequency is 2"]', b'1', '[11,1,2,3,4,5,4,3,2,1,3,4]', '["Bird with highest frequency is 3"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('COUNT-DIGIT-IN-RANGE', 'CountNumInRange', 3, 'ps-loops-01', '[2,3,100,250,0,20,21]', '[35,0]', b'1', '[3,2,10000,12345,9,899,1000,1,1100,1345]', '[1120,120,398]', b'1', '[5,7,1000,9999,1,345,11852,4,55768,100000,1,1000,100000,9,2500,11800]', '[3700,7105,17243,49699,3760]', b'1', NULL, NULL, b'0', NULL, NULL, b'0'),
	('MAX-MONEY-ROB', 'MaxMoneyRobbery', 3, 'ps-logic-01', '[2,5,10,2,12]', '[30,12]', b'1', '[4,4,25,7,13,10,27,17,45]', '[50,52,135,405]', b'1', '[7,99,17,106,8,127,76,248,44,117,38,430,23,841,12]', '[850,424,4864,5456,2242,4945,5052]', b'1', NULL, NULL, b'0', NULL, NULL, b'0'),
	('PAT01', 'SimpleStarPattern', 2, 'pattern01', '[3]', '["  *"," ***","*****"]', b'1', '[6]', '["     *","    ***","   *****","  *******"," *********","***********"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('STRING-WORD-COUNT', 'TwiceWordCountString', 2, 'ps-strings-01', '[2,10,"hate love peace love peace hate love peace love peace",8,"Tom Jerry Thomas Tom Jerry Courage Tom Courage"]', '[1,2]', b'1', '[2,15,"hai sri shakthi welcome to sri shakthi itvac team itvac of cdc coimbatore hello guys",16,"betty botter bought some butter but the butter was bitter so betty botter bought better butter"]', '[3,3]', b'1', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('SUB-ARR-ZERO', 'SubArraySumZero', 3, 'ps-array-06', '[5,4,2,-3,1,6]', '["true"]', b'1', '[7,1,2,3,-1,5,4,3]', '["false"]', b'0', '[12,1,2,3,-1,5,4,3,8,1,-12,4,11]', '["true"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('TC01', 'SimpleAdd', 2, 'TP01', '[1,2]', '[3]', b'1', '[3,4]', '[7]', b'0', '', '', b'0', '', '', b'0', '', '', b'0');
/*!40000 ALTER TABLE `testcasepool` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
