-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: canvas_data
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_dim`
--

DROP TABLE IF EXISTS `account_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for an account',
  `canvas_id` bigint(20) NOT NULL COMMENT 'Primary key for this entry in the Canvas accounts table',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the account',
  `depth` int(10) unsigned DEFAULT NULL COMMENT 'Depth of the account in the hierarchy. The root node is at 0.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow status indicating that account is [deleted] or [active]',
  `parent_account` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent account. This field will be NULL for the root account.',
  `parent_account_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent account. This field will be NULL for the root account.',
  `grandparent_account` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s grand parent account. This field will be NULL for the root account and all accounts at level 1.',
  `grandparent_account_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s grand parent account. This field will be NULL for the root account and all subaccounts at level 1.',
  `root_account` varchar(256) DEFAULT NULL COMMENT 'Name of the root account associated with this account.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Id of the root account associated with this account.',
  `subaccount1` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 1. If this account is a level 1 account, this will be the name of this account.',
  `subaccount1_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 1. If this account is a level 1 account, this will be the id of this account.',
  `subaccount2` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 2. If this account is a level 2 account, subaccount2 will be the name of this account.',
  `subaccount2_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 2. If this account is a level 2 account, subaccount2_id will be the id of this account.',
  `subaccount3` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 3. If this account is a level 3 account, subaccount3 will be the name of this account.',
  `subaccount3_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 3. If this account is a level 3 account, subaccount3_id will be the id of this account.',
  `subaccount4` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 4. If this account is a level 4 account, subaccount4 will be the name of this account.',
  `subaccount4_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 4. If this account is a level 4 account, subaccount4_id will be the id of this account.',
  `subaccount5` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 5. If this account is a level 5 account, subaccount5 will be the name of this account.',
  `subaccount5_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 5. If this account is a level 5 account, subaccount5_id will be the id of this account.',
  `subaccount6` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 6. If this account is a level 6 account, subaccount6 will be the name of this account.',
  `subaccount6_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 6. If this account is a level 6 account, subaccount6_id will be the id of this account.',
  `subaccount7` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 7. If this account is a level 7 account, subaccount7 will be the name of this account.',
  `subaccount7_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 7. If this account is a level 7 account, subaccount7_id will be the id of this account.',
  `subaccount8` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 8. If this account is a level 8 account, subaccount8 will be the name of this account.',
  `subaccount8_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 8. If this account is a level 8 account, subaccount8_id will be the id of this account.',
  `subaccount9` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 9. If this account is a level 9 account, subaccount9 will be the name of this account.',
  `subaccount9_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 9. If this account is a level 9 account, subaccount9_id will be the id of this account.',
  `subaccount10` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 10. If this account is a level 10 account, subaccount10 will be the name of this account.',
  `subaccount10_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 10. If this account is a level 10 account, subaccount10_id will be the id of this account.',
  `subaccount11` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 11. If this account is a level 11 account, subaccount11 will be the name of this account.',
  `subaccount11_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 11. If this account is a level 11 account, subaccount11_id will be the id of this account.',
  `subaccount12` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 12. If this account is a level 12 account, subaccount12 will be the name of this account.',
  `subaccount12_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 12. If this account is a level 12 account, subaccount12_id will be the id of this account.',
  `subaccount13` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 13. If this account is a level 13 account, subaccount13 will be the name of this account.',
  `subaccount13_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 13. If this account is a level 13 account, subaccount13_id will be the id of this account.',
  `subaccount14` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 14. If this account is a level 14 account, subaccount14 will be the name of this account.',
  `subaccount14_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 14. If this account is a level 14 account, subaccount14_id will be the id of this account.',
  `subaccount15` varchar(256) DEFAULT NULL COMMENT 'Name of this account''s parent at subaccount level 15. If this account is a level 15 account, subaccount15 will be the name of this account.',
  `subaccount15_id` bigint(20) DEFAULT NULL COMMENT 'Id of this account''s parent at subaccount level 15. If this account is a level 15 account, subaccount15_id will be the id of this account.',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT 'Correlated id for the record for this course in the SIS system (assuming SIS integration is configured)',
  PRIMARY KEY (`canvas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='An account object in the Canvas system. Accounts are most often used to represent a hierarchy of colleges, schools, departments, campuses, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_dim`
--

DROP TABLE IF EXISTS `assignment_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment.',
  `canvas_id` bigint(20) NOT NULL COMMENT 'Primary key for this record in the Canvas assignments table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment',
  `title` varchar(256) DEFAULT NULL COMMENT 'Title of the assignment',
  `description` longtext COMMENT 'Long description of the assignment',
  `due_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the assignment is due',
  `unlock_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the assignment is unlocked or visible to the user',
  `lock_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the assignment is locked',
  `points_possible` double DEFAULT NULL COMMENT 'Total points possible for the assignment',
  `grading_type` varchar(256) DEFAULT NULL COMMENT 'Describes how the assignment will be graded (gpa_scale, pass_fail, percent, points, not_graded, letter_grade)',
  `submission_types` varchar(256) DEFAULT NULL COMMENT 'Comma separated list of valid methods for submitting the assignment (online_url, media_recording, online_upload, online_quiz, external_tool, online_text_entry, online_file_upload)',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Current workflow state of the assignment. Possible values are unpublished, published and deleted',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp of the first time the assignment was entered into the system',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp of the last time the assignment was updated',
  `peer_review_count` int(10) unsigned DEFAULT NULL COMMENT 'The number of pears to assign for review if using algorithmic assignment',
  `peer_reviews_due_at` datetime DEFAULT NULL COMMENT 'Timestamp for when peer reviews should be completed',
  `peer_reviews_assigned` tinyint(1) DEFAULT NULL COMMENT 'True if all peer reviews have been assigned',
  `peer_reviews` tinyint(1) DEFAULT NULL COMMENT 'True if peer reviews are enabled for this assignment',
  `automatic_peer_reviews` tinyint(1) DEFAULT NULL COMMENT 'True if peer reviews are assigned algorithmically (vs. letting the instructor make manual assignments)',
  `all_day` tinyint(1) DEFAULT NULL COMMENT 'True if A specific time for when the assignment is due was not given. The effective due time will be 11:59pm.',
  `all_day_date` date DEFAULT NULL COMMENT 'The date version of the due date if the all_day flag is true.',
  `could_be_locked` tinyint(1) DEFAULT NULL COMMENT 'True if the assignment is under a module that can be locked',
  `grade_group_students_individually` tinyint(1) DEFAULT NULL COMMENT 'True if students who submit work as a group will each receive individual grades (vs one grade that is copied to all group members)',
  `anonymous_peer_reviews` tinyint(1) DEFAULT NULL COMMENT '(currently unimplemented, do not use)',
  `muted` tinyint(1) DEFAULT NULL COMMENT 'Student cannot see grades left on the assignment.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'The sorting order of the assignment in the group',
  PRIMARY KEY (`canvas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for for assignments. There is one record in this table for each assignment. Individual submissions of the assignment are in the submission_dim and submission_fact tables.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_fact`
--

DROP TABLE IF EXISTS `assignment_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_fact` (
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account associated with the course associated with this assignment',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `points_possible` double DEFAULT NULL COMMENT 'Total points possible for the assignment',
  `peer_review_count` int(10) unsigned DEFAULT NULL COMMENT 'The number of pears to assign for review if using algorithmic assignment',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table contains measures related to assignments.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_group_dim`
--

DROP TABLE IF EXISTS `assignment_group_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_group_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment group.',
  `canvas_id` bigint(20) NOT NULL COMMENT 'Primary key for this record in the Canvas assignment_groups table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course to which the assignment group belongs to.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the assignment group. Defaults to ''Assignments'' if no name is provided during group creation.',
  `default_assignment_name` varchar(256) DEFAULT NULL COMMENT 'Default name assigned to the assignments in the assignment group if no name is assigned to them during their creation. Also, it is the singularized version of the assignment group name by default (if it''s in English).',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Current workflow state of the assignment groups. Possible values are ''available'' and ''deleted''.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position of the assignment group in the assignment index page. It determines where it should be displayed on the page and where it should be displayed in a new course if the course is cloned.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when the assignment group was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the assignment group was last updated.',
  PRIMARY KEY (`canvas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for assignment_groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_group_fact`
--

DROP TABLE IF EXISTS `assignment_group_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_group_fact` (
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course to which the assignment group belongs to.',
  `group_weight` double DEFAULT NULL COMMENT 'Weight of the assignment group. Reflects the value populated in the ''% of total grade'' field in Canvas while creating the assignment group.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for assignment_groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_group_rule_dim`
--

DROP TABLE IF EXISTS `assignment_group_rule_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_group_rule_dim` (
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `drop_lowest` int(10) unsigned DEFAULT NULL COMMENT 'Number of lowest scored assignments which can be dropped from the group. Set to ''0'' when none should be dropped. Defauts to ''0''.',
  `drop_highest` int(10) unsigned DEFAULT NULL COMMENT 'Number of highest scored assignments which can be dropped form the group. Set to ''0'' when none should be dropped. Defaults to ''0''.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Rules associated with an assignment group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_override_dim`
--

DROP TABLE IF EXISTS `assignment_override_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_override_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment override.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas assignments table.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the override is associated with. May be empty.',
  `course_section_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course_section.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the override is associated with.',
  `all_day` enum('new_all_day','same_all_day') DEFAULT NULL COMMENT 'Indicates if the all_day field overrides the original assignment.all_day field for this group of users.',
  `all_day_date` date DEFAULT NULL COMMENT 'The new date version of the due date if the all_day flag is true.',
  `assignment_version` int(10) unsigned DEFAULT NULL COMMENT 'The version of the assignment this override is applied too.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the assignment_override was created.',
  `due_at` datetime DEFAULT NULL COMMENT 'The new due_at date-time for this group of users.',
  `due_at_overridden` enum('new_due_at','same_due_at') DEFAULT NULL COMMENT 'Indicates if the due_at field overrides the original assignment.due_at field for this group of users.',
  `lock_at` datetime DEFAULT NULL COMMENT 'The new lock_at date-time for this group of users.',
  `lock_at_overridden` enum('new_lock_at','same_lock_at') DEFAULT NULL COMMENT 'Indicates if the lock_at field overrides the original assignment.lock_at field for this group of users.',
  `set_type` enum('course_section','group','adhoc') DEFAULT NULL COMMENT 'Used in conjunction with set_id, this field tells us what type of foreign relation is used.',
  `title` longtext COMMENT 'The title for this assignment_override.',
  `unlock_at` datetime DEFAULT NULL COMMENT 'The new unlock_at date-time for this group of users.',
  `unlock_at_overridden` enum('new_unlock_at','same_unlock_at') DEFAULT NULL COMMENT 'Indicates if the unlock_at field overrides the original assignment.unlock_at field for this group of users.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the assignment_override was last updated.',
  `quiz_version` int(10) unsigned DEFAULT NULL COMMENT 'The version of the quiz this override is applied too.',
  `workflow_state` enum('active','deleted') DEFAULT NULL COMMENT 'Gives the workflow state of this record.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for assignment_override. There may be many records in this table for each assignment. Use the data in this table to calculate actual due, all_day, lock and unlock dates/times.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_override_fact`
--

DROP TABLE IF EXISTS `assignment_override_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_override_fact` (
  `assignment_override_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment_override.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account associated with the course associated with this assignment.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the override is associated with. May be empty.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment.',
  `course_section_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course_section.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to group category dimension table.',
  `group_parent_account_id` bigint(20) DEFAULT NULL COMMENT 'If the group is directly associated with an account, this is the id.',
  `nonxlist_course_id` bigint(20) DEFAULT NULL COMMENT 'The course ID for the original course if this course has been cross listed.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the override is associated with. May be empty.',
  `group_wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table contains measures related to assignment overrides. Overrides can be found in the assignment_override_dim. Overrides are primarily the dates about the assigmnents for a given group of assignees.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_override_user_dim`
--

DROP TABLE IF EXISTS `assignment_override_user_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_override_user_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment_override_student.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'The ID of the user in the adhoc group table.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the override is associated with. May be empty.',
  `assignment_override_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment override dimension',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the override is associated with. May be empty.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the assignment_override_student was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the assignment_override_student was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table contains measures related to adhoc users for whom an assignment override exists.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_override_user_fact`
--

DROP TABLE IF EXISTS `assignment_override_user_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_override_user_fact` (
  `assignment_override_user_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the assignment_override_student. Is made up by adding a large number to the ID of the source table.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account associated with the course associated with this assignment.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension this fact is related to',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the override is associated with. May be empty.',
  `assignment_override_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment override dimension this fact is related to',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the override is associated with. May be empty.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table contains measures related to students for whom an assignment override exists.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_override_user_rollup_fact`
--

DROP TABLE IF EXISTS `assignment_override_user_rollup_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_override_user_rollup_fact` (
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the override is associated with. May be empty.',
  `assignment_override_id` bigint(20) DEFAULT NULL COMMENT 'The ID of the assignment_override for this override user.',
  `assignment_override_user_adhoc_id` bigint(20) DEFAULT NULL COMMENT 'When not empty, this field is the ID of the user in the adhoc group table.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account associated with the course associated with this assignment.',
  `course_section_id` bigint(20) DEFAULT NULL COMMENT 'When not empty, this field is the ID of the course_section the user is part of.',
  `enrollment_id` bigint(20) DEFAULT NULL COMMENT 'When not empty, this field is the ID of the enrollment for a course section.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT 'When not empty, this field is the ID of the group category the user is part of.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'When not empty, this field is the ID of the group the user is part of.',
  `group_parent_account_id` bigint(20) DEFAULT NULL COMMENT 'If the group is directly associated with an account, this is the id.',
  `group_wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.',
  `nonxlist_course_id` bigint(20) DEFAULT NULL COMMENT 'The course ID for the original course if this course has been cross listed.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the override is associated with. May be empty.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table contains measures related to students for whom an assignment override exists. This table contains the user ids of users for whom an override was created. There are 3 ways a user can be included, via an adhoc form, via a group membership, or a course section. All three are included here.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_rule_dim`
--

DROP TABLE IF EXISTS `assignment_rule_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_rule_dim` (
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'ID of the assignment which can never be dropped from the group.',
  `drop_rule` varchar(256) DEFAULT NULL COMMENT 'Denotes if the assignment can be dropped from the assignment group if the group allows dropping assignments based on certain rules. Is set to ''never_drop'' if the assignment is exempted from dropping, else set to ''can_be_dropped''.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Rules associated with an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `communication_channel_dim`
--

DROP TABLE IF EXISTS `communication_channel_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_channel_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the communication channel.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this communication channel in the communication_channel table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user that owns this communication channel.',
  `address` varchar(256) DEFAULT NULL COMMENT 'Address, or path, of the communication channel. Set to ''NULL'' for push notifications.',
  `type` varchar(256) DEFAULT NULL COMMENT 'Denotes the type of the path. Possible values are ''email'', ''facebook'', ''push'' (device push notifications), ''sms'' and ''twitter''. Defaults to ''email''.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position of this communication channel relative to the user''s other channels when they are ordered.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Current state of the communication channel. Possible values are ''unconfirmed'' and ''active''.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when the quiz was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the quiz was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for communication channel.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `communication_channel_fact`
--

DROP TABLE IF EXISTS `communication_channel_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_channel_fact` (
  `communication_channel_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the communication channel dimension table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user that owns this communication channel.',
  `bounce_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of permanent bounces since the channel was last reset. If it''s greater than 0, then no email is sent to the channel, until it is either reset by a siteadmin or it is removed and re-added by a user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for communication channel.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `conversation_dim`
--

DROP TABLE IF EXISTS `conversation_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the conversation.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Original primary key for conversation in the Canvas table',
  `has_attachments` tinyint(1) DEFAULT NULL COMMENT 'True if the conversation has attachments',
  `has_media_objects` tinyint(1) DEFAULT NULL COMMENT 'True if the conversation has media objects',
  `subject` varchar(256) DEFAULT NULL COMMENT 'The subject of the conversation',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'The course that owns this conversation',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'The group that owns this conversation',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'The account this owns this conversation',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a conversation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `conversation_message_dim`
--

DROP TABLE IF EXISTS `conversation_message_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_message_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the message.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Original ID for canvas table.',
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Parent conversation for this message.',
  `author_id` bigint(20) DEFAULT NULL COMMENT 'User id of the author of the message.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date and time this message was created.',
  `generated` tinyint(1) DEFAULT NULL COMMENT 'This attribute is true if the system generated this message (e.g. "John was added to this conversation")',
  `has_attachments` tinyint(1) DEFAULT NULL COMMENT 'True if the message has attachments.',
  `has_media_objects` tinyint(1) DEFAULT NULL COMMENT 'True if the message has media objects.',
  `body` longtext COMMENT 'The content of the message.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a message in a conversation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `conversation_message_participant_fact`
--

DROP TABLE IF EXISTS `conversation_message_participant_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_message_participant_fact` (
  `conversation_message_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the message dimension for the associated message.',
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the conversation dimension for the associated conversation',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension for the associated user',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course dimension for the associated course.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to the course''s account',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group dimension for a particular group',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to account_dim',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table',
  `message_size_bytes` int(10) unsigned DEFAULT NULL COMMENT 'The message size in bytes.',
  `message_character_count` int(10) unsigned DEFAULT NULL COMMENT 'The message size in characters.',
  `message_word_count` int(10) unsigned DEFAULT NULL COMMENT 'The message size in words using space and common punctuation as word breaks.',
  `message_line_count` int(10) unsigned DEFAULT NULL COMMENT 'The number of lines in a message.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Fact table for each message in a conversation and each participant';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_dim`
--

DROP TABLE IF EXISTS `course_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for a course',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this course in the canvas courses table.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'The root account associated with this course.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'The parent account for this course.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to enrollment term table',
  `name` varchar(256) DEFAULT NULL COMMENT 'The friendly name of the course.',
  `code` varchar(256) DEFAULT NULL COMMENT 'The code for the course (e.g. FA12 MATH 2000)',
  `type` varchar(256) DEFAULT NULL COMMENT 'deprecated. No longer used, will always be NULL.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the course object was created in Canvas',
  `start_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the course starts.',
  `conclude_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the course finishes',
  `publicly_visible` tinyint(1) DEFAULT NULL COMMENT 'True if the course is publicly visible',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT 'Correlated id for the record for this course in the SIS system (assuming SIS integration is configured)',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow status indicating the current state of the course, valid values are: completed (course has been hard concluded), created (course has been created, but not published), deleted (course has been deleted), available (course is published, and not hard concluded), claimed (course has been undeleted, and is not published).',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A course in the canvas system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_section_dim`
--

DROP TABLE IF EXISTS `course_section_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_section_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the course section.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas course_sections table.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the section',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the associated course',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the associated enrollment term',
  `default_section` tinyint(1) DEFAULT NULL COMMENT 'True if this is the default section',
  `accepting_enrollments` tinyint(1) DEFAULT NULL COMMENT 'True if this section is open for enrollment',
  `can_manually_enroll` tinyint(1) DEFAULT NULL COMMENT 'Deprecated',
  `start_at` datetime DEFAULT NULL COMMENT 'Section start date',
  `end_at` datetime DEFAULT NULL COMMENT 'Section end date',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp for when this section was entered into the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the last time the section was updated',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Life-cycle state for section. (active, deleted)',
  `restrict_enrollments_to_section_dates` tinyint(1) DEFAULT NULL COMMENT 'True when "Users can only participate in the course between these dates" is checked',
  `nonxlist_course_id` bigint(20) DEFAULT NULL COMMENT 'The course id for the original course if this course has been cross listed',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT 'Id for the correlated record for the section in the SIS (assuming SIS integration has been properly configured)',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a section of a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_ui_canvas_navigation_dim`
--

DROP TABLE IF EXISTS `course_ui_canvas_navigation_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_ui_canvas_navigation_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Primary key for navigational item',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'ID in Canvas system',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of navigational item',
  `default` varchar(256) DEFAULT NULL COMMENT '(Default|NotDefault) - set to Default if this is one of the navigation items enabled in a course by default',
  `original_position` varchar(256) DEFAULT NULL COMMENT 'Original position of this navigation item',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a Canvas navigation function';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_ui_navigation_item_dim`
--

DROP TABLE IF EXISTS `course_ui_navigation_item_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_ui_navigation_item_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Primary key for navigational item',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to root account of the course',
  `visible` varchar(256) DEFAULT NULL COMMENT '(visible|hidden) Visible if this element is visible, hidden if hidden/not available in the navigation',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position in the navigation. NULL if hidden.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a navigation item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_ui_navigation_item_fact`
--

DROP TABLE IF EXISTS `course_ui_navigation_item_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_ui_navigation_item_fact` (
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to root account of the course',
  `course_ui_navigation_item_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course_ui_navigation_item_dim',
  `course_ui_canvas_navigation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to navigation function',
  `external_tool_activation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to external_tool_activation_dim',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to account for course',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to enrollment term'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Facts describing a single item in the navigation UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discussion_entry_dim`
--

DROP TABLE IF EXISTS `discussion_entry_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_entry_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the discussion entry.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas discussion_entries table',
  `message` longtext COMMENT 'Full text of the entry''s message',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow state for discussion message (values: deleted, active)',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion entry was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion entry was updated.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion entry was deleted.',
  `depth` int(10) unsigned DEFAULT NULL COMMENT 'Reply depth for this entry',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for discussion entries. Discussion entries are replies in a discussion topic.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discussion_entry_fact`
--

DROP TABLE IF EXISTS `discussion_entry_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_entry_fact` (
  `discussion_entry_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to this entries attributes.',
  `parent_discussion_entry_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the reply that it is nested underneath.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user that created this entry.',
  `topic_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to associated discussion topic.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to associated course.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to account for associated course.',
  `topic_user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to user that posted the associated discussion topic.',
  `topic_assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment associated with the entry''s discussion topic.',
  `topic_editor_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to editor associated with the entry''s discussion topic.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table',
  `message_length` int(10) unsigned DEFAULT NULL COMMENT 'Length of the message in bytes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for discussion entries. Discussion entries are replies in a discussion topic.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discussion_topic_dim`
--

DROP TABLE IF EXISTS `discussion_topic_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_topic_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the discussion topic.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key to the discussion_topics table in Canvas',
  `title` varchar(256) DEFAULT NULL COMMENT 'Title of the discussion topic',
  `message` longtext COMMENT 'Message text for the discussion topic.',
  `type` varchar(256) DEFAULT NULL COMMENT 'Discussion topic type. Two types are default (blank) and announcement.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow state for this discussion topic. Valid states are unpublished, active, locked, deleted, and post_delayed',
  `last_reply_at` datetime DEFAULT NULL COMMENT 'Timestamp of the last reply to this topic.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion topic was first saved in the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion topic was last updated in the system.',
  `delayed_post_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion topic was/will be delay-posted',
  `posted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion topic was posted',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the discussion topic was deleted.',
  `discussion_type` varchar(256) DEFAULT NULL COMMENT 'Type of discussion topic: default(blank), side_comment, threaded. threaded indicates that replies are threaded where side_comment indicates that replies in the discussion are flat. See related Canvas Guide https://guides.instructure.com/m/4152/l/60423-how-do-i-create-a-threaded-discussion',
  `pinned` tinyint(1) DEFAULT NULL COMMENT 'True if the discussion topic has been pinned',
  `locked` tinyint(1) DEFAULT NULL COMMENT 'True if the discussion topic has been locked',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for discussion topics in Canvas. Discussion topics are logical discussion threads. They can have many discussion entries. They also have their own message text for the message that started the topic.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discussion_topic_fact`
--

DROP TABLE IF EXISTS `discussion_topic_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_topic_fact` (
  `discussion_topic_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the discussion topic dimension for the associated discussion topic.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course dimension',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT '(currently un-populated) Foreign key to the account dimension for the account associated with the associated course',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension for the user that created the discussion topic.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment dimension',
  `editor_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user to last edit the entry, if different than user_id',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table',
  `message_length` int(10) unsigned DEFAULT NULL COMMENT 'The length of the message in bytes.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for discussion topics/threads.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment_dim`
--

DROP TABLE IF EXISTS `enrollment_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the enrollment.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas enrollments table',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Root account id associated with this enrollment',
  `course_section_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course section for this enrollment',
  `role_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the role of the person enrolled in the course',
  `type` varchar(256) DEFAULT NULL COMMENT 'Enrollment type: TaEnrollment, DesignerEnrollment, StudentEnrollment, TeacherEnrollment, StudentViewEnrollment, ObserverEnrollment',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow state for enrollment: active, completed, rejected, deleted, invited, creation_pending',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp for when this section was entered into the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp for when the last time the section was updated',
  `start_at` datetime DEFAULT NULL COMMENT 'Enrollment start date',
  `end_at` datetime DEFAULT NULL COMMENT 'Enrollment end date',
  `completed_at` datetime DEFAULT NULL COMMENT 'Enrollment completed date',
  `self_enrolled` tinyint(1) DEFAULT NULL COMMENT 'Enrollment was created via self-enrollment',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course for this enrollment',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to user for the enrollment',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='An enrollment represents a user''s association with a specific course and section';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment_fact`
--

DROP TABLE IF EXISTS `enrollment_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_fact` (
  `enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key for the attributes of the enrollment',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrolled user',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrolled course',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the enrolled course',
  `course_section_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrolled section',
  `computed_final_score` double DEFAULT NULL COMMENT 'Final score for the enrollment',
  `computed_current_score` double DEFAULT NULL COMMENT 'Current score for the enrollment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for enrollments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment_rollup_dim`
--

DROP TABLE IF EXISTS `enrollment_rollup_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_rollup_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the user and the course.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrolled user.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrolled course.',
  `enrollment_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of enrollments associated with the user in the course for his/her all roles under all base roles, duplicate or not.',
  `role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of unique roles associated with the user in the course.',
  `base_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of unique base roles associated with the user in the course.',
  `account_admin_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''AccountAdmin'' roles associated with the user in the course.',
  `teacher_enrollment_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''TeacherEnrollment'' roles associated with the user in the course.',
  `designer_enrollment_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''DesignerEnrollment'' roles associated with the user in the course.',
  `ta_enrollment_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''TaEnrollment'' roles associated with the user in the course.',
  `student_enrollment_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''StudentEnrollment'' roles associated with the user in the course.',
  `observer_enrollment_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''ObserverEnrollment'' roles associated with the user in the course.',
  `account_membership_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''AccountMembership'' roles associated with the user in the course.',
  `no_permissions_role_count` int(10) unsigned DEFAULT NULL COMMENT 'Total number of ''NoPermissions'' roles associated with the user in the course.',
  `account_admin_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `teacher_enrollment_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `designer_enrollment_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `ta_enrollment_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `student_enrollment_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `observer_enrollment_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `account_membership_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `no_permissions_enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment ID if this a valid role for the user in the course, else NULL.',
  `most_privileged_role` varchar(256) DEFAULT NULL COMMENT 'The most privileged role associated with the user in the course.',
  `least_privileged_role` varchar(256) DEFAULT NULL COMMENT 'The least privileged role associated with the user in the course.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Would be an empty table. Roll-up aggregating the roles held by the users in the courses they are associated with.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment_term_dim`
--

DROP TABLE IF EXISTS `enrollment_term_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_term_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the enrollment term.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas enrollments table.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the root account for this enrollment term',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the enrollment term',
  `date_start` datetime DEFAULT NULL COMMENT 'Term start date',
  `date_end` datetime DEFAULT NULL COMMENT 'Term end date',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT 'Correlated SIS id for this enrollment term (assuming SIS has been configured properly)',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Enrollment term describes the term or semester associated with courses (e.g. Fall 2013)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `external_tool_activation_dim`
--

DROP TABLE IF EXISTS `external_tool_activation_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_tool_activation_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for tool activations',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the context_external_tools table in the Canvas database',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course if this tool was activated in a course',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account this tool was activated in if it was activated in an account',
  `activation_target_type` varchar(256) DEFAULT NULL COMMENT 'The type of object the tool was activated in, (course or account)',
  `url` varchar(4096) DEFAULT NULL COMMENT 'The URL to where the tool may launch to',
  `name` varchar(256) DEFAULT NULL COMMENT 'The name of tool activation as entered by the user',
  `description` varchar(256) DEFAULT NULL COMMENT 'The description of the tool activation as entered by the user',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow state for activation (active, deleted)',
  `privacy_level` varchar(256) DEFAULT NULL COMMENT 'Privacy setting for activation (name_only, email_only, anonymous, public)',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the activation was created',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the activation was last updated',
  `tool_id` varchar(256) DEFAULT NULL COMMENT 'The tool id received from the external tool. May be missing if the tool does not send an id.',
  `selectable_all` tinyint(1) DEFAULT NULL COMMENT 'true - tool is selectable in all scenarios. false - not selectable for assignment or module selection menu',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for external tool (LTI) activations. Note that activations can happen on courses or accounts. If this activation is associated with a course then course_id, course_account_id and enrollment_term_id will be populated. If this activation is associated with an account then only account_id will be populated.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `external_tool_activation_fact`
--

DROP TABLE IF EXISTS `external_tool_activation_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_tool_activation_fact` (
  `external_tool_activation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the external_tool_activation_dim dimension with attribute for this activation',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course if this tool was activated in a course',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account this tool was activated in if it was activated in an account',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the root account for this data',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course''s enrollment term if this tool was activated in a course',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course''s account if this tool was activated in a course'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Facts and denormalized dimensions for external tool (LTI) activations.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file_dim`
--

DROP TABLE IF EXISTS `file_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for this file.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this file in the attachments table.',
  `display_name` longtext COMMENT 'Name of this file.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account this file belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment this file belongs to.',
  `conversation_message_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the conversation message this file belongs to.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this file belongs to.',
  `folder_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the folder this file belongs to.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group this file belongs to.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz this file belongs to.',
  `quiz_submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz submission this file belongs to.',
  `replacement_file_id` bigint(20) DEFAULT NULL COMMENT 'ID of the overwriting file if this file is overwritten.',
  `root_file_id` bigint(20) DEFAULT NULL COMMENT 'ID of the source file from which this file was copied and created. Set to ''NULL'' when this is the only copy.',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission this file belongs to.',
  `uploader_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user who uploaded this file. Might contain users which are not in the user dimension table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user this file belongs to.',
  `owner_entity_type` enum('account','assignment','conversation_message','course','group','quiz','quiz_submission','submission','user') DEFAULT NULL COMMENT 'Table this file is associated with.',
  `content_type` varchar(256) DEFAULT NULL COMMENT 'Contains the MIME type of this file.',
  `md5` varchar(256) DEFAULT NULL COMMENT 'Contains the MD5 checksum of the contents of this file.',
  `file_state` enum('available','broken','deleted','errored','hidden') DEFAULT NULL COMMENT 'Denotes the current state of this file.',
  `could_be_locked` enum('allow_locking','disallow_locking') DEFAULT NULL COMMENT 'Dictates if the quiz can be locked or not.',
  `locked` enum('is_locked','is_not_locked') DEFAULT NULL COMMENT 'Denotes the current lock status of this file.',
  `lock_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file is to be locked.',
  `unlock_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file is to unlocked.',
  `viewed_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file was last viewed.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file was last updated.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date/Time when this file was deleted.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for files.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file_fact`
--

DROP TABLE IF EXISTS `file_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_fact` (
  `file_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to this file dimesion table.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account this file belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment, the quiz/quiz submission/submission associated with this file belongs to.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group, the assignment/submission associated with this file belongs to.',
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the conversation, the conversation message associated with this file belongs to.',
  `conversation_message_author_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user, who authored the conversation message this file belongs to.',
  `conversation_message_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the conversation message this file belongs to.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course, the assignment/quiz/quiz submission/submission associated with this file belongs to.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up, the quiz submission/submission associated with this file belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term, the assignment/conversation message/group/quiz/quiz submission/submission associated with this file belongs to.',
  `folder_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the folder this file belongs to.',
  `grader_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user who graded the submission associated with this file.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group this file belongs to.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to group category the group associated with this file belongs to.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz, the quiz/quiz submission associated with this file belongs to.',
  `quiz_submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz submission this file belongs to.',
  `replacement_file_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the file which overwrote/replaced this file. Defaults to ''NULL'' when the file was not overwritten/replaced.',
  `root_file_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the source file from which this file was copied and created. Defaults to ''NULL'' when this is the only copy.',
  `sis_source_id` varchar(256) DEFAULT NULL COMMENT 'Correlated ID for the record for the course, associated with this file, in the SIS system (assuming SIS integration is configured).',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission this file belongs to.',
  `uploader_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user who uploaded this file. Might contain users which are not in the user dimension table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user this file belongs to.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki the conversation message/group/submission associated with this file belongs to.',
  `size` bigint(20) DEFAULT NULL COMMENT 'Size of this file in bytes.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for files.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_dim`
--

DROP TABLE IF EXISTS `group_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the group.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key to the groups table in canvas.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the group.',
  `description` longtext COMMENT 'Description of the group.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the group was first saved in the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the group was last updated in the system.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the group was deleted.',
  `is_public` tinyint(1) DEFAULT NULL COMMENT 'True if the group contents are accessible to public.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow state for group.(values: deleted,active)',
  `context_type` varchar(256) DEFAULT NULL COMMENT 'The context type to which the group belongs to. For example- Accounts, Courses etc.',
  `category` longtext COMMENT 'Group description by the users.',
  `join_level` varchar(256) DEFAULT NULL COMMENT 'Permissions required to join a group. For example, it can be invitation-only or auto.',
  `default_view` varchar(256) DEFAULT NULL COMMENT 'Default view for groups is the feed.',
  `sis_source_id` bigint(20) DEFAULT NULL COMMENT 'Correlated id for the record for this group in the SIS system (assuming SIS integration is configured)',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to group category dimension table.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Parent account for this group.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for groups in canvas. Groups contain two or more students enrolled in a particular course working on an assignment or project together.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_fact`
--

DROP TABLE IF EXISTS `group_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_fact` (
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group dimension for a particular group.',
  `parent_course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course dimension.',
  `parent_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to accounts table.',
  `parent_course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the course to which the group belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term table for the parent course.',
  `max_membership` int(10) unsigned DEFAULT NULL COMMENT 'Maximum number of users that can be accommodated in a group.',
  `storage_quota` bigint(20) DEFAULT NULL COMMENT 'Storage Limit allowed per group.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to group category dimension table.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Parent account for this group.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_membership_dim`
--

DROP TABLE IF EXISTS `group_membership_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_membership_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'The ID of the membership object',
  `canvas_id` varchar(256) DEFAULT NULL COMMENT 'The ID of the membership object as it appears in the db.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group dimension for a particular group.',
  `moderator` enum('is_moderator','not_moderator') DEFAULT NULL COMMENT 'Whether or not the user is a moderator of the group.',
  `workflow_state` enum('accepted','invited','requested','deleted') DEFAULT NULL COMMENT 'The current state of the membership. Current possible values are ''accepted'', ''invited'', ''requested'', and ''deleted''',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the group membership was first saved in the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the group membership was last updated in the system.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for groups_membership in canvas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_membership_fact`
--

DROP TABLE IF EXISTS `group_membership_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_membership_fact` (
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group dimension for a particular group.',
  `parent_course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course dimension.',
  `parent_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to accounts table.',
  `parent_course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the course to which the group belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term table for the parent course.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension for the users in the group.',
  `group_membership_id` varchar(256) DEFAULT NULL COMMENT 'The ID of the membership object'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_completion_requirement_dim`
--

DROP TABLE IF EXISTS `module_completion_requirement_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_completion_requirement_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module completion requirement.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Module that contains the completion requirement.',
  `module_item_id` bigint(20) DEFAULT NULL COMMENT 'Item that is the subject of the completion requirement.',
  `requirement_type` enum('must_view','must_mark_done','min_score','must_submit') DEFAULT NULL COMMENT 'Type of completion event that must be achieved to consider item complete.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a module completion.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_completion_requirement_fact`
--

DROP TABLE IF EXISTS `module_completion_requirement_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_completion_requirement_fact` (
  `module_completion_requirement_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module completion requirement.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the module and the module item belong to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Assignment associated with the module item.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Assignment group associated with the module item.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this module and the module item.',
  `discussion_topic_id` bigint(20) DEFAULT NULL COMMENT 'Discussion topic associated with the module item.',
  `discussion_topic_editor_id` bigint(20) DEFAULT NULL COMMENT 'Editor of the discussion topic associated with the module item.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Enrollment rollup associated with the module item.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term associated with this module and the module item.',
  `file_id` bigint(20) DEFAULT NULL COMMENT 'File associated with the module item.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Module that contains the completion requirement.',
  `module_item_id` bigint(20) DEFAULT NULL COMMENT 'Item that is the subject of the completion requirement.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Quiz associated with the module item.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'User associated with the module item.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki associated with this module and the module item.',
  `wiki_page_id` bigint(20) DEFAULT NULL COMMENT 'Wiki page associated with the module_item.',
  `min_score` double DEFAULT NULL COMMENT 'For min_score type requirements, the score that must be attained for completion.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to module completion requirements.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_dim`
--

DROP TABLE IF EXISTS `module_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Original primary key for module in the Canvas table.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'The course that owns this module.',
  `require_sequential_progress` enum('required','not_required','unspecified') DEFAULT NULL COMMENT 'Should module items be completed sequentially? Valid values are ''required'', ''not_required'', ''unspecified''.',
  `workflow_state` enum('locked','completed','unlocked','started') DEFAULT NULL COMMENT 'Workflow state for submission lifetime values.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position of the module on the modules page.',
  `name` longtext COMMENT 'The name of the module in Canvas.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module was created.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the module was deleted.',
  `unlock_at` datetime DEFAULT NULL COMMENT 'Timestamp when the module will unlock.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_fact`
--

DROP TABLE IF EXISTS `module_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_fact` (
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the module belongs to.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment_term associated with the module_fact course.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki associated with the module_fact course.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to modules.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_item_dim`
--

DROP TABLE IF EXISTS `module_item_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_item_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module_item.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Original primary key for module_item in the Canvas table.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Key into assignments table for ''Assignment'' type items.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'The course that owns this module.',
  `discussion_topic_id` bigint(20) DEFAULT NULL COMMENT 'Key into discussion_topics table for ''Discussion'' type items.',
  `file_id` bigint(20) DEFAULT NULL COMMENT 'Key into file table for ''File'' type items.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Parent module for this module item.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Key into quizzes table for ''Quiz'' type items.',
  `wiki_page_id` bigint(20) DEFAULT NULL COMMENT 'Key into wiki_pages table for ''Page'' type items.',
  `content_type` enum('Assignment','Attachment','DiscussionTopic','ContextExternalTool','ContextModuleSubHeader','ExternalUrl','LearningOutcome','Quiz','Rubric','WikiPage') DEFAULT NULL COMMENT 'The type of content linked to this item. One of: ''Assignment'', ''Attachment'', ''DiscussionTopic'', ''ContextExternalTool'', ''ContextModuleSubHeader'', ''ExternalUrl'', ''LearningOutcome'', ''Quiz'', ''Rubric'' or ''WikiPage''.',
  `workflow_state` enum('active','unpublished','deleted') DEFAULT NULL COMMENT 'State of the module item.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position of the module item within the module context.',
  `title` longtext COMMENT 'Title of the module item.',
  `url` longtext COMMENT 'Url for external url type module items.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module item was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module item was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a module item.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_item_fact`
--

DROP TABLE IF EXISTS `module_item_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_item_fact` (
  `module_item_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module_item.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the module belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Key into assignments table for ''Assignment'', ''DiscussionTopic'', ''File'', ''Quiz'' type items.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Key into assignment_groups for ''Assignment'', ''File'' type items.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'The course that owns this module.',
  `discussion_topic_id` bigint(20) DEFAULT NULL COMMENT 'Key into discussion_topics table for ''DiscussionTopic'' type items.',
  `discussion_topic_editor_id` bigint(20) DEFAULT NULL COMMENT 'Key into users table for user who edited ''DiscussionTopic'' type items.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Key into enrollment_rollup table for user associated with ''DiscussionTopic'', ''File'' type items.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment_term associated with the module course.',
  `file_id` bigint(20) DEFAULT NULL COMMENT 'Key into file table for ''File'' type items.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Parent module for this module item.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Key into quizzes table for ''File'', ''Quiz'' type items.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Key into users table for ''DiscussionTopic'', ''File'', ''WikiPage'' type items.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Key into wiki table for ''WikiPage'' type items.',
  `wiki_page_id` bigint(20) DEFAULT NULL COMMENT 'Key into wiki_pages table for ''WikiPage'' type items.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to modules_items.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_prerequisite_dim`
--

DROP TABLE IF EXISTS `module_prerequisite_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_prerequisite_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module prerequisite.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Module that contains the prerequisite.',
  `prerequisite_module_id` bigint(20) DEFAULT NULL COMMENT 'Module that must be completed to fulfill the prerequisite.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a module prerequisite.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_prerequisite_fact`
--

DROP TABLE IF EXISTS `module_prerequisite_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_prerequisite_fact` (
  `module_prerequisite_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module prerequisite.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the module belongs to.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment_term associated with the module_fact course.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Module that contains the prerequisite.',
  `prerequisite_module_id` bigint(20) DEFAULT NULL COMMENT 'Module that must be completed to fulfill the prerequisite.',
  `prerequisite_wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki associated with the module_fact course.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki associated with the module_fact course.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to module prerequisites.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_progression_completion_requirement_dim`
--

DROP TABLE IF EXISTS `module_progression_completion_requirement_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_progression_completion_requirement_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module progression completion requirement.',
  `module_progression_id` bigint(20) DEFAULT NULL COMMENT 'Module progression referenced by completion requirement.',
  `module_item_id` bigint(20) DEFAULT NULL COMMENT 'Item that the user has not completed.',
  `requirement_type` enum('must_view','must_mark_done','min_score','must_submit') DEFAULT NULL COMMENT 'Type of completion event that must be achieved to consider item complete.',
  `completion_status` enum('complete','incomplete') DEFAULT NULL COMMENT 'Denotes if the completion event is complete or not.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes tracking a requirement that remains to be completed by a user. Not a comprehensive list, typically just holds requirements that have been attempted by the user.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_progression_completion_requirement_fact`
--

DROP TABLE IF EXISTS `module_progression_completion_requirement_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_progression_completion_requirement_fact` (
  `module_progression_completion_requirement_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module progression completion requirement.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Key to the account associated with the module progression and the module item.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Key to the assignment associated with the module item.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Key to the assignment group associated with the module item.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Key to the course associated with the module progression and the module item.',
  `discussion_topic_id` bigint(20) DEFAULT NULL COMMENT 'Key to the discussion topic associated with the module item.',
  `discussion_topic_editor_id` bigint(20) DEFAULT NULL COMMENT 'Key to the user editing the discussion topic associated with the module item.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Key to the enrollment rollup associated with the module item.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Key to the enrollment term associated with the module progression and the module item.',
  `file_id` bigint(20) DEFAULT NULL COMMENT 'Key to the file associated with the module item.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Parent module for this module progression and module item.',
  `module_item_id` bigint(20) DEFAULT NULL COMMENT 'Item that the user has not completed.',
  `module_progression_id` bigint(20) DEFAULT NULL COMMENT 'Module progression referenced by the completion requirement.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Key to the quiz associated with the module item.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Key to the user associated with the module progression and the module item.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Key to the wiki associated with the module progression and the module item.',
  `wiki_page_id` bigint(20) DEFAULT NULL COMMENT 'Key to the wiki page associated with the module item.',
  `min_score` double DEFAULT NULL COMMENT 'For min_score type requirements, the score that must be attained for completion.',
  `score` double DEFAULT NULL COMMENT 'For min_score type requirements, the score that the user has currently achieved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to module progression completion requirements.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_progression_dim`
--

DROP TABLE IF EXISTS `module_progression_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_progression_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module progression.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Original primary key for module progression in the Canvas table.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Parent module for this module progression.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'User being tracked in the module progression.',
  `collapsed` enum('collapsed','not_collapsed','unspecified') DEFAULT NULL COMMENT 'Collapsed state of the module progression.',
  `is_current` enum('current','not_current','unspecified') DEFAULT NULL COMMENT 'The current state of the module progression.',
  `workflow_state` enum('locked','completed','unlocked','started') DEFAULT NULL COMMENT 'The workflow state of the module progression.',
  `current_position` int(10) unsigned DEFAULT NULL COMMENT 'Represents the users current position in the module.',
  `lock_version` int(10) unsigned DEFAULT NULL COMMENT 'Lock version of the module progression.',
  `created_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module progression was created.',
  `completed_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module progression was completed.',
  `evaluated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module progression was evaluated.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date/Time when the module progression was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for a module progression.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_progression_fact`
--

DROP TABLE IF EXISTS `module_progression_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_progression_fact` (
  `module_progression_id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the module progression.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the module belongs to.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course associated with this module.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment_term associated with the module course.',
  `module_id` bigint(20) DEFAULT NULL COMMENT 'Parent module for this module progression.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'User being tracked in the module progression.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki associated with the module course.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table containing measures related to modules_progression.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pseudonym_dim`
--

DROP TABLE IF EXISTS `pseudonym_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pseudonym_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the pseudonym.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this pseudonym in the the Canvas database',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Id for the user associated with this pseudonym',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Id for the account associated with this pseudonym',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow status indicating that pseudonym is [deleted] or [active]',
  `last_request_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the user last logged in with this pseudonym',
  `last_login_at` datetime DEFAULT NULL COMMENT 'Timestamp of last time a user logged in with this pseudonym',
  `current_login_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the user logged in',
  `last_login_ip` varchar(256) DEFAULT NULL COMMENT 'IP address recorded the last time a user logged in with this pseudonym',
  `current_login_ip` varchar(256) DEFAULT NULL COMMENT 'IP address of user''s current/last login',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position of user''s login credentials',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when this pseudonym was created in Canvas',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when this pseudonym was last updated in Canvas',
  `password_auto_generated` tinyint(1) DEFAULT NULL COMMENT 'True if the password has been auto-generated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp when the pseudonym was deleted (NULL if the pseudonym is still active)',
  `sis_user_id` varchar(256) DEFAULT NULL COMMENT 'Correlated id for the record for this course in the SIS system (assuming SIS integration is configured)',
  `unique_name` varchar(256) DEFAULT NULL COMMENT 'Actual login id for a given pseudonym/account',
  `integration_id` varchar(256) DEFAULT NULL COMMENT 'A secondary unique identifier useful for more complex SIS integrations. This identifier must not change for the user, and must be globally unique.',
  `authentication_provider_id` bigint(20) DEFAULT NULL COMMENT 'The authentication provider this login is associated with. This can be the integer ID of the provider, or the type of the provider (in which case, it will find the first matching provider.)',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Pseudonyms are logins associated with users.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pseudonym_fact`
--

DROP TABLE IF EXISTS `pseudonym_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pseudonym_fact` (
  `pseudonym_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to pseudonym dimension table',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to user associated with this pseudonym',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to account associated with this pseudonym',
  `login_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of times a user has logged in with this pseudonym',
  `failed_login_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of times failed login attempt to this pseudonym'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_dim`
--

DROP TABLE IF EXISTS `quiz_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the quiz.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz in the quizzes table.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Root account ID associated with this quiz.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the quiz. Equivalent Canvas API field -> ''title''.',
  `points_possible` double DEFAULT NULL COMMENT 'Total point value given to the quiz.',
  `description` longtext COMMENT 'Description of the quiz.',
  `quiz_type` varchar(256) DEFAULT NULL COMMENT 'Type of quiz. Possible values are ''practice_quiz'', ''assignment'', ''graded_survey'' and ''survey''. Defaults to ''NULL''.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course the quiz belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Denotes where the quiz is in the workflow. Possible values are ''unpublished'', ''published'' and ''deleted''. Defaults to ''unpublished''.',
  `scoring_policy` varchar(256) DEFAULT NULL COMMENT 'Scoring policy for a quiz that students can take multiple times. Is required and only valid if allowed_attempts > 1. Possible values are ''keep_highest'', ''keep_latest'' and ''keep_average''. Defaults to ''keep_highest''.',
  `anonymous_submissions` varchar(256) DEFAULT NULL COMMENT 'Dictates whether students are allowed to submit the quiz anonymously. Possible values are ''allow_anonymous_submissions'' and ''disallow_anonymous_submissions''. Defaults to ''disallow_anonymous_submissions''.',
  `display_questions` varchar(256) DEFAULT NULL COMMENT 'Policy for displaying the questions in the quiz. Possible values are ''multiple_at_a_time'' and ''one_at_a_time''. Defaults to ''multiple_at_a_time''. Equivalent Canvas API field -> ''one_question_at_a_time''.',
  `answer_display_order` varchar(256) DEFAULT NULL COMMENT 'Policy for displaying the answers for each question in the quiz. Possible values are ''in_order'' and ''shuffled''. Defaults to ''in_order''. Equivalent Canvas API field -> ''shuffle_answers''.',
  `go_back_to_previous_question` varchar(256) DEFAULT NULL COMMENT 'Policy on going back to the previous question. Is valid only if ''display_questions'' is set to ''one_at_a_time''. Possible values are ''allow_going_back'' and ''disallow_going_back''. Defaults to ''allow_going_back''. Equivalent Canvas API field -> ''cant_go_back''.',
  `could_be_locked` varchar(256) DEFAULT NULL COMMENT 'Dictates if the quiz can be locked or not. Possible values are ''allow_locking'' and ''disallow_locking''. Defaults to ''disallow_locking''.',
  `browser_lockdown` varchar(256) DEFAULT NULL COMMENT 'Dictates whether the browser has locked-down when the quiz is being taken. Possible values are ''required'' and ''not_required''. Defaults to ''not_required''.',
  `browser_lockdown_for_displaying_results` varchar(256) DEFAULT NULL COMMENT 'Dictates whether the browser has to be locked-down to display the results. Is valid only if ''hide_results'' is set to ''never'' or ''until_after_last_attempt'' (for the results to be displayed after the last attempt). Possible values are ''required'' and ''not_required''. Defaults to ''not_required''.',
  `browser_lockdown_monitor` varchar(256) DEFAULT NULL COMMENT 'Dictates whether a browser lockdown monitor is required. Possible values are ''required'' and ''not_required''. Defaults to ''not_required''.',
  `ip_filter` varchar(256) DEFAULT NULL COMMENT 'Restricts access to the quiz to computers in a specified IP range. Filters can be a comma-separated list of addresses, or an address followed by a mask.',
  `show_results` varchar(256) DEFAULT NULL COMMENT 'Dictates whether or not quiz results are shown to students. If set to ''always'', students can see their results after any attempt and if set to ''never'', students can never see their results. If ''dw_quiz_fact.allowed_attempts > 1'' then when set to ''always_after_last_attempt'', students can only see their results always, but only after their last attempt. Similarly, if set to ''only_once_after_last_attempt'', then students can see their results only after their last attempt, that too only once. Possible values are ''always'', ''never'', ''always_after_last_attempt'' and ''only_once_after_last_attempt''. Defaults to ''always''. Equivalent Canvas API field -> ''hide_results'' combined with ''one_time_results''.',
  `show_correct_answers` varchar(256) DEFAULT NULL COMMENT 'Dictates whether correct answers are shown when are results are viewed. It''s valid only if ''show_results'' is set to ''always''. Possible values are ''always'', ''never'', ''only_once_after_last_attempt'' and ''always_after_last_attempt'' (Last two are only valid if ''dw_quiz_fact.allowed_attempts > 1'') which have a behavior similar to ''show_results''. Defaults to ''always''. Equivalent Canvas API field -> ''show_correct_answers'' combined with ''show_correct_answers_last_attempt''.',
  `show_correct_answers_at` datetime DEFAULT NULL COMMENT 'Day/Time when the correct answers would be shown.',
  `hide_correct_answers_at` datetime DEFAULT NULL COMMENT 'Day/Time when the correct answers are to be hidden.',
  `created_at` datetime DEFAULT NULL COMMENT 'Time when the quiz was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Time when the quiz was last updated.',
  `published_at` datetime DEFAULT NULL COMMENT 'Time when the quiz was published.',
  `unlock_at` datetime DEFAULT NULL COMMENT 'Day/Time when the quiz is to be unlocked for students.',
  `lock_at` datetime DEFAULT NULL COMMENT 'Day/Time when the quiz is to be locked for students.',
  `due_at` datetime DEFAULT NULL COMMENT 'Day/Time when the quiz is due.',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Time when the quiz was deleted.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_fact`
--

DROP TABLE IF EXISTS `quiz_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_fact` (
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to quiz dimension table.',
  `points_possible` double DEFAULT NULL COMMENT 'Total point value given to the quiz.',
  `time_limit` int(10) unsigned DEFAULT NULL COMMENT 'Time limit, in minutes, to complete the quiz. Set to -1 for no time limit. Defaults to -1.',
  `allowed_attempts` int(10) unsigned DEFAULT NULL COMMENT 'Number of attempts allowed to complete the quiz. Set to -1 for unlimited attempts. Defaults to -1.',
  `unpublished_question_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of questions in the current unpublished version of the quiz.',
  `question_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of questions in the last published version of the quiz',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course the quiz belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account associated with the course associated with this quiz.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to enrollment term the quiz belongs to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_answer_dim`
--

DROP TABLE IF EXISTS `quiz_question_answer_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_answer_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate key for the quiz question answer. As with all surrogate keys in Canvas Data, there is no guarantee of stability. That said, this key is particularly unstable and will likely change from dump to dump even if there are no data change.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz question answer. No table available in Canvas.',
  `quiz_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz question dimension column.',
  `text` longtext COMMENT 'Text of the answer.',
  `html` longtext COMMENT 'HTML markup of the text.',
  `comments` longtext COMMENT 'Specific contextual comments for a particular answer.',
  `text_after_answers` longtext COMMENT '(Used in ''short_answer_question'', also known as ''fill_in_the_blank''. Set to ''NULL'' in others) Text following the missing word.',
  `answer_match_left` varchar(256) DEFAULT NULL COMMENT '(Used in ''matching_question'', set to ''NULL'' in others) Static value of the answer that will be displayed on the left for students to match for.',
  `answer_match_right` varchar(256) DEFAULT NULL COMMENT '(Used in ''matching_question'', set to ''NULL'' in others) Correct match for the value given in ''answer_match_left'', displayed in a drop-down with other ''answer_match_right'' values.',
  `matching_answer_incorrect_matches` varchar(256) DEFAULT NULL COMMENT '(Used in ''matching_question'', set to ''NULL'' in others) List of distractors (incorrect answers), delimited by new lines, that will be seeded with all the ''answer_match_right'' values.',
  `numerical_answer_type` varchar(256) DEFAULT NULL COMMENT '(Used in ''numerical_question'', set to ''NULL'' in others) Denotes the type of numerical answer that is expected. Possible values are ''exact_answer'' and ''range_answer''.',
  `blank_id` varchar(256) DEFAULT NULL COMMENT '(Used in ''fill_in_multiple_blanks_question'' and ''multiple_dropdowns_question'', set to ''NULL'' otherwise) Refers to the ID of the blank(s) in the question text.',
  `exact` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''exact_answer'', set to ''NULL'' otherwise) Value the answer must be equal to.',
  `margin` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''exact_answer'', set to ''NULL'' otherwise) Margin of error allowed for a student''s answer.',
  `starting_range` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''range_answer'', set to ''NULL'' otherwise) Start of the allowed range (inclusive).',
  `ending_range` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''range_answer'', set to ''NULL'' otherwise) End of the allowed range (inclusive).',
  UNIQUE KEY `id` (`id`,`quiz_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes of an answer related to a quiz question.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_answer_fact`
--

DROP TABLE IF EXISTS `quiz_question_answer_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_answer_fact` (
  `quiz_question_answer_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz question answer dimension table. As with all surrogate keys in Canvas Data, there is no guarantee of stability. That said, this key is particularly unstable and will likely change from dump to dump even if there are no data change.',
  `quiz_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz question dimension table.',
  `quiz_question_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz group dimension table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz dimension table.',
  `assessment_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assessment question dimension table (to be made available in later releases).',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this group''s quiz belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the course this group belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term of the course this group belongs to.',
  `weight` double DEFAULT NULL COMMENT 'Integer value to determine correctness of the answer. Incorrect answers should be 0, correct answers should be non-negative.',
  `exact` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''exact_answer'', set to ''NULL'' otherwise) Value the answer must be equal to.',
  `margin` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''exact_answer'', set to ''NULL'' otherwise) Margin of error allowed for a student''s answer.',
  `starting_range` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''range_answer'', set to ''NULL'' otherwise) Start of the allowed range (inclusive).',
  `ending_range` double DEFAULT NULL COMMENT '(Used in ''numerical_question'' with answer type ''range_answer'', set to ''NULL'' otherwise) End of the allowed range (inclusive).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for answers related to a quiz question.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_dim`
--

DROP TABLE IF EXISTS `quiz_question_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate key for the quiz question.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz question in the ''quiz_questions'' table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz dimension table.',
  `quiz_question_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz group dimension table.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Order in which the question will be displayed in the quiz relative to other questions associated with the quiz.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Denotes where the quiz question is in the workflow. Possible values are ''unpublished'', ''published'' and ''deleted''. Defaults to ''unpublished''.',
  `created_at` datetime DEFAULT NULL COMMENT 'Time when the quiz question was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Time when the quiz question was last updated.',
  `assessment_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assessment question dimension table (to be made available in later releases).',
  `assessment_question_version` int(10) unsigned DEFAULT NULL COMMENT 'Version of the assessment question associated with the quiz question (to be made available in later releases).',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the question.',
  `question_type` varchar(256) DEFAULT NULL COMMENT 'Denotes the type of the question. Possible values are ''calculated_question'', ''essay_question'', ''file_upload_question'', ''fill_in_multiple_blanks_question'', ''matching_question'', ''multiple_answers_question'', ''multiple_choice_question'', ''multiple_dropdowns_question'', ''numerical_question'', ''short_answer_question'', ''text_only_question'' and ''true_false_question''.',
  `question_text` longtext COMMENT 'Text content of the question.',
  `regrade_option` varchar(256) DEFAULT NULL COMMENT 'Denotes if regrading is available for the question. Possible values are ''available'' and ''unavailable'' for question types ''multiple_answers_question'', ''multiple_choice_question'', ''true_false_question'' and ''NULL'' for others. Defaults to ''available'' for the allowed question types and ''NULL'' for the rest.',
  `correct_comments` longtext COMMENT 'Comments to be displayed if the student answers the question correctly.',
  `incorrect_comments` longtext COMMENT 'Comments to be displayed if the student answers the question incorrectly.',
  `neutral_comments` longtext COMMENT 'Comments to be displayed regardless of how the student answers the question.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes of a question associated with a quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_fact`
--

DROP TABLE IF EXISTS `quiz_question_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_fact` (
  `quiz_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz question dimension table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz dimension table.',
  `quiz_question_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz group dimension table.',
  `assessment_question_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assessment question dimension table (to be made available in later releases).',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this group''s quiz belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the course this group belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term of the course this group belongs to.',
  `points_possible` double DEFAULT NULL COMMENT 'Maximum number of points that can be awarded for answering the question correctly.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures of a question associated with a quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_group_dim`
--

DROP TABLE IF EXISTS `quiz_question_group_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_group_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the quiz group.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz group in the ''quiz_question_groups'' table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to quiz dimension.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the quiz group.',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Order in which the questions from this group will be displayed in the quiz relative to other questions in the quiz from other groups.',
  `created_at` datetime DEFAULT NULL COMMENT 'Time when the quiz question was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Time when the quiz question was last updated.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for quiz group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_question_group_fact`
--

DROP TABLE IF EXISTS `quiz_question_group_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_group_fact` (
  `quiz_question_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to quiz group.',
  `pick_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of questions picked from the group for the quiz the group is associated with.',
  `question_points` double DEFAULT NULL COMMENT 'Number of points to assign per question in the group.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to quiz dimension.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this group''s quiz belongs to.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the course this group belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term of the course this group belongs to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures related to quiz groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_submission_dim`
--

DROP TABLE IF EXISTS `quiz_submission_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_submission_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the quiz submission.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz submission in the ''quiz_submissions'' Canvas table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'ID of the quiz the quiz submission represents. Foreign key to the quiz dimension table.',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'ID to the submission the quiz submission represents. Foreign key to the quiz submission dimension table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID of the user (who is a student) who made the submission. Foreign key to the user dimension table.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Denotes the current state of the quiz submission. Possible values are ''untaken'', ''complete'', ''pending_review'', ''preview'' and ''settings_only''. Defaults to ''untaken''. An ''untaken'' quiz submission is recorded as soon as a student starts the quiz taking process, before even answering the first question. ''pending_review'' denotes that a manual submission has been made by the student which has not been completely graded yet. This usually happens when one or more questions in the quiz cannot be autograded (e.g.. ''essay_question'' type questions). A ''preview'' workflow state is recorded when a Teacher or Admin previews a quiz (even a partial one). ''settings_only'' pertains only to quiz moderation events. It stores the settings to create and store moderation events before the student has begun an attempt.',
  `quiz_state_during_submission` varchar(256) DEFAULT NULL COMMENT 'There can be two types of quiz states during submission, 1. Quiz submission took place after the quiz was manually unlocked after being locked (but only for a particular student such that (s)he can take the quiz even if it''s locked for everyone else). 2. Quiz submission was on-time (that is, when the quiz was never locked). So the two possible values are ''manually_unlocked'' and ''never_locked''. Defaults to ''never_locked''.',
  `submission_scoring_policy` varchar(256) DEFAULT NULL COMMENT 'Denotes if the score has been manually overridden by a teacher to reflect the score of a previous attempt (as opposed to a score calculated by the quiz''s scoring policy. Possible values are ''manually_overridden'' or the general quiz scoring policies, i.e. ''keep_highest'', ''keep_latest'' and ''keep_average''. Defaults to the scoring policy of the quiz the submission is associated with.',
  `submission_source` varchar(256) DEFAULT NULL COMMENT 'Denotes where the submission was received from. Possible values are ''student'' and ''test_preview''. Defaults to ''student''.',
  `has_seen_results` varchar(256) DEFAULT NULL COMMENT 'Denotes whether the student has viewed their results to the quiz.',
  `temporary_user_code` varchar(256) DEFAULT NULL COMMENT 'Construct for previewing a quiz.',
  `created_at` datetime DEFAULT NULL COMMENT 'Time when the quiz submission was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Time when the quiz submission was last updated.',
  `started_at` datetime DEFAULT NULL COMMENT 'Time at which the student started the quiz submission.',
  `finished_at` datetime DEFAULT NULL COMMENT 'Time at which the student submitted the quiz submission.',
  `due_at` datetime DEFAULT NULL COMMENT 'Time at which the quiz submission will be overdue, and will be flagged as a late submission.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for the last submitted quiz';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_submission_fact`
--

DROP TABLE IF EXISTS `quiz_submission_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_submission_fact` (
  `score` double DEFAULT NULL COMMENT 'Denotes the score for this submission. Its value would be NULL when they are in the ''preview'', ''untaken'' OR ''settings_only'' workflow states (since it is associated with quiz moderation events). Or its value should not be NULL when workflow state is either ''complete'' or ''pending_review''. It defaults to NULL.',
  `kept_score` double DEFAULT NULL COMMENT 'For quizzes that allow multiple attempts, this is the actual score that will be associated with the user for this quiz. This score depends on the scoring policy we have for the submission in the quiz submission dimension table, the workflow state being ''completed'' or ''pending_review'' and the allowed attempts to be greater than 1. Its value can be NULL when not all these required conditions are met.',
  `date` datetime DEFAULT NULL COMMENT 'Contains the same value as ''finished_at''. Provided to support backward compatibility with the existing table in production.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this submission belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term of the course this submission belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the course this submission belongs to.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'ID of the quiz the quiz submission represents. Foreign key to the quiz dimension table.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID of the user (who is a student) who made the submission. Foreign key to the user dimension table.',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'ID to the submission the quiz submission represents. Foreign key to the quiz submission dimension table.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table.',
  `quiz_submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz submission dimension table.',
  `quiz_points_possible` double DEFAULT NULL COMMENT 'Maximum points that can be scored in this quiz.',
  `score_before_regrade` double DEFAULT NULL COMMENT 'Original score of the quiz submission prior to any re-grading. It''s NULL if the submission has never been regraded. Defaults to NULL.',
  `fudge_points` double DEFAULT NULL COMMENT 'Number of points the quiz submission''s score was fudged (changed) by. Values can be negative or positive. Defaults to 0.',
  `total_attempts` int(10) unsigned DEFAULT NULL COMMENT 'Denotes the total number of attempts made by the student for the quiz. Is valid only if the quiz allows multiple attempts.',
  `extra_attempts` int(10) unsigned DEFAULT NULL COMMENT 'Number of times the student was allowed to re-take the quiz over the multiple-attempt limit.',
  `extra_time` int(10) unsigned DEFAULT NULL COMMENT 'Amount of extra time allowed for the quiz submission, in minutes.',
  `time_taken` int(10) unsigned DEFAULT NULL COMMENT 'Time taken, in seconds, to finish the quiz.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for the last submitted quiz';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_submission_historical_dim`
--

DROP TABLE IF EXISTS `quiz_submission_historical_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_submission_historical_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the quiz submission.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this quiz submission in the ''quiz_submissions'' Canvas table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'ID of the quiz the quiz submission represents. Foreign key to the quiz dimension table.',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'ID to the submission the quiz submission represents. Foreign key to the quiz submission dimension table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID of the user (who is a student) who made the submission. Foreign key to the user dimension table.',
  `version_number` int(10) unsigned DEFAULT NULL COMMENT 'Version number of this quiz submission.',
  `submission_state` varchar(256) DEFAULT NULL COMMENT 'Denotes if the quiz submission is a current or previous submission. Possible values are ''current_submission'' and ''previous_submission''. Defaults to ''current_submission''.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Denotes the current state of the quiz submission. Possible values are ''untaken'', ''complete'', ''pending_review'', ''preview'' and ''settings_only''. Out of these, ''settings_only'' pertains only to quiz moderation events. It stores the settings to create and store moderation events before the student has begun an attempt. Defaults to ''untaken''.',
  `quiz_state_during_submission` varchar(256) DEFAULT NULL COMMENT 'There can be two types of quiz states during submission, 1. Quiz submission took place after the quiz was manually unlocked after being locked (but only for a particular student such that (s)he can take the quiz even if it''s locked for everyone else). 2. Quiz submission was on-time (that is, when the quiz was never locked). So the two possible values are ''manually_unlocked'' and ''never_locked''. Defaults to ''never_locked''.',
  `submission_scoring_policy` varchar(256) DEFAULT NULL COMMENT 'Denotes if the score has been manually overridden by a teacher to reflect the score of a previous attempt (as opposed to a score calculated by the quiz''s scoring policy. Possible values are ''manually_overridden'' or the general quiz scoring policies, i.e. ''keep_highest'', ''keep_latest'' and ''keep_average''. Defaults to the scoring policy of the quiz the submission is associated with.',
  `submission_source` varchar(256) DEFAULT NULL COMMENT 'Denotes where the submission was received from. Possible values are ''student'' and ''test_preview''. Defaults to ''student''.',
  `has_seen_results` varchar(256) DEFAULT NULL COMMENT 'Denotes whether the student has viewed their results to the quiz.',
  `temporary_user_code` varchar(256) DEFAULT NULL COMMENT 'Construct for previewing a quiz.',
  `created_at` datetime DEFAULT NULL COMMENT 'Time when the quiz submission was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Time when the quiz submission was last updated.',
  `started_at` datetime DEFAULT NULL COMMENT 'Time at which the student started the quiz submission.',
  `finished_at` datetime DEFAULT NULL COMMENT 'Time at which the student submitted the quiz submission.',
  `due_at` datetime DEFAULT NULL COMMENT 'Time at which the quiz submission will be overdue, and will be flagged as a late submission.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for all submitted quizzes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quiz_submission_historical_fact`
--

DROP TABLE IF EXISTS `quiz_submission_historical_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_submission_historical_fact` (
  `score` double DEFAULT NULL COMMENT 'Denotes the score for this submission. Its value would be NULL when they are in the ''preview'', ''untaken'' OR ''settings_only'' workflow states (since it is associated with quiz moderation events). Or its value should not be NULL when workflow state is either ''complete'' or ''pending_review''. It defaults to NULL.',
  `kept_score` double DEFAULT NULL COMMENT 'For quizzes that allow multiple attempts, this is the actual score that will be associated with the user for this quiz. This score depends on the scoring policy we have for the submission in the quiz submission dimension table, the workflow state being ''completed'' or ''pending_review'' and the allowed attempts to be greater than 1. Its value can be NULL when not all these required conditions are met.',
  `date` datetime DEFAULT NULL COMMENT 'Contains the same value as ''finished_at''. Provided to support backward compatibility with the existing table in production.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the course this submission belongs to.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term of the course this submission belongs to.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account of the course this submission belongs to.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'ID of the quiz the quiz submission represents. Foreign key to the quiz dimension table.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment the quiz belongs to.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID of the user (who is a student) who made the submission. Foreign key to the user dimension table.',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'ID to the submission the quiz submission represents. Foreign key to the quiz submission dimension table.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table.',
  `quiz_submission_historical_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz submission dimension table.',
  `quiz_points_possible` double DEFAULT NULL COMMENT 'Maximum points that can be scored in this quiz.',
  `score_before_regrade` double DEFAULT NULL COMMENT 'Original score of the quiz submission prior to any re-grading. It''s NULL if the submission has never been regraded. Defaults to NULL.',
  `fudge_points` double DEFAULT NULL COMMENT 'Number of points the quiz submission''s score was fudged (changed) by. Values can be negative or positive. Defaults to 0.',
  `total_attempts` int(10) unsigned DEFAULT NULL COMMENT 'Denotes the total number of attempts made by the student for the quiz. Is valid only if the quiz allows multiple attempts.',
  `extra_attempts` int(10) unsigned DEFAULT NULL COMMENT 'Number of times the student was allowed to re-take the quiz over the multiple-attempt limit.',
  `extra_time` int(10) unsigned DEFAULT NULL COMMENT 'Amount of extra time allowed for the quiz submission, in minutes.',
  `time_taken` int(10) unsigned DEFAULT NULL COMMENT 'Time taken, in seconds, to finish the quiz.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for the all submitted quizzes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` varchar(36) DEFAULT NULL COMMENT 'Request ID assigned by the canvas system to the request.',
  `timestamp` datetime DEFAULT NULL COMMENT 'Timestamp when the request was made in UTC.',
  `timestamp_year` varchar(256) DEFAULT NULL COMMENT 'Year when the request was made.',
  `timestamp_month` varchar(256) DEFAULT NULL COMMENT 'Month when the request was made.',
  `timestamp_day` varchar(256) DEFAULT NULL COMMENT 'Day when the request was made.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in user_dim for the user that made the request. If the request was made by one user masquerading as another, then this column contains the ID of the user being masqueraded as.',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in course_dim for the course that owned the page requested. Set to NULL if not applicable.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in account_dim for the root account on which this request was made.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in account_dim for the account the associated course is owned by.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in quiz_dim if the page request is for a quiz, otherwise NULL.',
  `discussion_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in discussion_dim if page request is for a discussion, otherwise NULL.',
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key in conversation_dim if page request is for a conversation, otherwise NULL.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Assignment foreign key if page request is for an assignment, otherwise NULL.',
  `url` longtext COMMENT 'URL which was requested.',
  `user_agent` longtext COMMENT 'User agent header received from the users browser/client software.',
  `http_method` varchar(256) DEFAULT NULL COMMENT 'HTTP method/verb (GET, PUT, POST etc.) that was sent with the request.',
  `remote_ip` varchar(256) DEFAULT NULL COMMENT 'IP address that was recorded from the request.',
  `interaction_micros` bigint(20) DEFAULT NULL COMMENT 'Total time required to service the request in microseconds.',
  `web_application_controller` varchar(256) DEFAULT NULL COMMENT 'The controller the Canvas web application used to service this request.',
  `web_application_action` varchar(256) DEFAULT NULL COMMENT 'Controller the Canvas web application used to service this request. (There is a typo in the field name, in order to minimize impact, this will be changed in a future version of Canvas Data.)',
  `web_application_context_type` varchar(256) DEFAULT NULL COMMENT 'Containing object type the Canvas web application used to service this request.',
  `web_application_context_id` varchar(256) DEFAULT NULL COMMENT 'Containing object''s ID the Canvas web application used to service this request.',
  `real_user_id` bigint(20) DEFAULT NULL COMMENT 'If the request was processed by one user masquerading as another, then this column contains the real user ID of the user.',
  `session_id` varchar(256) DEFAULT NULL COMMENT 'ID of the user''s session where this request was made.',
  `user_agent_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to the user agent dimension table.',
  `http_status` varchar(10) DEFAULT NULL COMMENT 'HTTP status of the request.',
  `http_version` varchar(256) DEFAULT NULL COMMENT 'HTTP protocol version.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Pageview requests. Disclaimer: The data in the requests table is a ''best effort'' attempt, and is not guaranteed to be complete or wholly accurate. This data is meant to be used for rollups and analysis in the aggregate, _not_ in isolation for auditing, or other high-stakes analysis involving examining single users or small samples. As this data is generated from the Canvas logs files, not a transactional database, there are many places along the way data can be lost and/or duplicated (though uncommon). Additionally, given the size of this data, our processes are often done on monthly cycles for many parts of the requests tables, so as errors occur they can only be rectified monthly.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_dim`
--

DROP TABLE IF EXISTS `role_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the role.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for this record in the Canvas roles table',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for this role''s root account.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'The foreign key to the account that is in the role',
  `name` varchar(256) DEFAULT NULL COMMENT 'The name of role, previously was "role_name" on the enrollments_dim',
  `base_role_type` varchar(256) DEFAULT NULL COMMENT 'The built in type this role is based on.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow status indicating that the role is [deleted] or [inactive]',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp of the first time the role was entered into the system',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp of the last time the role was updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the role was removed from the system',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Give the possible roles for an enrolled user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `score_dim`
--

DROP TABLE IF EXISTS `score_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate identifier for the score.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for the score.',
  `enrollment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the Enrollment table.',
  `grading_period_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the grading period group table.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when record was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when record was last updated.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'workflow state for the score. Possibe values are ''active'', ''deleted''',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for scores. You can think of a score as synonymous with a cell inside the gradebook.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_comment_dim`
--

DROP TABLE IF EXISTS `submission_comment_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comment_dim` (
  `id` bigint(20) DEFAULT NULL,
  `canvas_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `recipient_id` bigint(20) DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `author_id` bigint(20) DEFAULT NULL,
  `assessment_request_id` bigint(20) DEFAULT NULL,
  `group_comment_id` varchar(256) DEFAULT NULL,
  `comment` longtext,
  `author_name` varchar(256) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `anonymous` tinyint(1) DEFAULT NULL,
  `teacher_only_comment` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_comment_fact`
--

DROP TABLE IF EXISTS `submission_comment_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comment_fact` (
  `submission_comment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission comment dimension related to the comment',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission dimension related to the comment',
  `recipient_id` bigint(20) DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `author_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension for the author of the comment',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course dimension of course associated with the assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension of the account associated with the course associated with the assignment',
  `message_size_bytes` int(10) unsigned DEFAULT NULL COMMENT 'The message size in bytes.',
  `message_character_count` int(10) unsigned DEFAULT NULL COMMENT 'The message size in characters.',
  `message_word_count` int(10) unsigned DEFAULT NULL COMMENT 'The message size in words using space and common punctuation as word breaks.',
  `message_line_count` int(10) unsigned DEFAULT NULL COMMENT 'The number of lines in a message.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_comment_participant_dim`
--

DROP TABLE IF EXISTS `submission_comment_participant_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comment_participant_dim` (
  `id` bigint(20) DEFAULT NULL,
  `canvas_id` bigint(20) DEFAULT NULL,
  `participation_type` varchar(256) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_comment_participant_fact`
--

DROP TABLE IF EXISTS `submission_comment_participant_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comment_participant_fact` (
  `submission_comment_participant_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission comment participant dimension',
  `submission_comment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission comment dimension for the comment',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension of the user who made the comment',
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the submission dimension related to this participant''s comment',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course dimension of course associated with the assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension of the account associated with the course associated with the assignment',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_dim`
--

DROP TABLE IF EXISTS `submission_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate ID for the submission.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key of this record in the Canvas submissions table.',
  `body` longtext COMMENT 'Text content for the submission.',
  `url` varchar(256) DEFAULT NULL COMMENT 'URL content for the submission.',
  `grade` varchar(256) DEFAULT NULL COMMENT 'Letter grade mapped from the score by the grading scheme.',
  `submitted_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the submission was submitted.',
  `submission_type` enum('discussion_topic','external_tool','media_recording','online_file_upload','online_quiz','online_text_entry','online_upload','online_url') DEFAULT NULL COMMENT 'Type of submission.',
  `workflow_state` enum('graded','pending_review','submitted','unsubmitted') DEFAULT NULL COMMENT 'Workflow state for submission lifetime values.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the submission was created.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the submission was last updated.',
  `processed` tinyint(1) DEFAULT NULL COMMENT 'Valid only when there is a file/attachment associated with the submission. By default, this attribute is set to ''false'' when making the assignment submission. When a submission has a file/attachment associated with it, upon submitting the assignment a snapshot is saved and its'' value is set to ''true''. Defaults to ''NULL''.',
  `process_attempts` int(10) unsigned DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `grade_matches_current_submission` tinyint(1) DEFAULT NULL COMMENT 'Valid only when a score has been assigned to a submission. This is set to ''false'' if a student makes a new submission to an already graded assignment. This is done to indicate that the current grade given by the teacher is not for the most recent submission by the student. It is set to ''true'' if a score has been given and there is no new submission. Defaults to ''NULL''.',
  `published_grade` varchar(256) DEFAULT NULL COMMENT 'Valid only for a graded submission. The values are strings that reflect the grading type used. For example, a scoring method of ''points'' will show ''4'' if given a ''4'' out of ''5'', and a scoring method of ''letter grade'' will show ''B'' for the same score (assuming a grading scale where 80-90% is a ''B''). Defaults to ''NULL''.',
  `graded_at` datetime DEFAULT NULL COMMENT 'Timestamp of when the submission was graded.',
  `has_rubric_assessment` tinyint(1) DEFAULT NULL COMMENT 'Valid only for a graded submission. Its'' value is set to ''true'' if the submission is associated with a rubric that has been assessed for at least one student, otherwise is set to ''false''. Defaults to ''NULL''.',
  `attempt` int(10) unsigned DEFAULT NULL COMMENT 'The number of attempts made including this one.',
  `has_admin_comment` tinyint(1) DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension.',
  `excused` enum('excused_submission','regular_submission') DEFAULT NULL COMMENT 'Denotes if this submission is excused or not.',
  `graded_anonymously` enum('graded_anonymously','not_graded_anonymously') DEFAULT NULL COMMENT 'Denotes how the grading has been performed.',
  `grader_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension of user who graded the assignment.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group_dim table.',
  `quiz_submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz_submission_dim table.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user_dim table.',
  `grade_state` enum('auto_graded','human_graded','not_graded') DEFAULT NULL COMMENT 'Denotes the current state of the grade.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='This table records the latest submission for an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `submission_fact`
--

DROP TABLE IF EXISTS `submission_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_fact` (
  `submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to submission dimension',
  `assignment_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to assignment dimension',
  `course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to course dimension of course associated with the assignment.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign Key to enrollment term table',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to user dimension of user who submitted the assignment.',
  `grader_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user dimension of user who graded the assignment.',
  `course_account_id` bigint(20) DEFAULT NULL COMMENT '(Deprecated) Foreign key to the account dimension of the account associated with the course associated with the assignment. Please use ''account_id'' instead.',
  `enrollment_rollup_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment roll-up dimension table.',
  `score` double DEFAULT NULL COMMENT 'Numeric grade given to the submission.',
  `published_score` double DEFAULT NULL COMMENT 'Valid only for a graded submission. It reflects the numerical value of the actual score. Referring to our previous example for ''submission_dim.published_grade'', let''s take two submissions, one for an assignment with a scoring method of ''points'' and the other for an assignment with a scoring method of ''letter grade''. If the published grade is ''4'' out of ''5'' and ''B'' for them, respectively, then they should both have a score of ''4'' out of ''5''. And their ''published_score'' values will be identical, ''4.0''. Defaults to ''NULL''.',
  `what_if_score` double DEFAULT NULL COMMENT 'Valid only if the student ever entered a ''What If'' score for an assignment in the Canvas UI. Only the most recent score entered by the student is stored here. Any time a new score is entered, the existing one is overwritten. Defaults to ''NULL''.',
  `submission_comments_count` int(10) unsigned DEFAULT NULL COMMENT 'Reflects the total number of comments on the submission by anyone/everyone, excluding comments that are flagged as ''hidden''.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account the submission belongs to.',
  `assignment_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the assignment group dimension table.',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the group_dim table.',
  `quiz_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz the quiz submission associated with this submission represents.',
  `quiz_submission_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the quiz_submission_dim table.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki_dim table.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_dim`
--

DROP TABLE IF EXISTS `user_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique surrogate id for the user.',
  `canvas_id` bigint(20) NOT NULL COMMENT 'Primary key for this user in the Canvas users table.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Root account associated with this user.',
  `name` varchar(256) DEFAULT NULL COMMENT 'Name of the user',
  `time_zone` varchar(256) DEFAULT NULL COMMENT 'User''s primary timezone',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the user was created in the Canvas system',
  `visibility` varchar(256) DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `school_name` varchar(256) DEFAULT NULL COMMENT 'Used in Trial Versions of Canvas, the school the user is associated with',
  `school_position` varchar(256) DEFAULT NULL COMMENT 'Used in Trial Versions of Canvas, the position the user has at the school. E.g. Admin',
  `gender` varchar(256) DEFAULT NULL COMMENT 'The user''s gender. This is an optional field and may not be entered by the user.',
  `locale` varchar(256) DEFAULT NULL COMMENT 'The user''s locale. This is an optional field and may not be entered by the user.',
  `public` varchar(256) DEFAULT NULL COMMENT 'Used in Trial Versions of Canvas, the type of school the user is associated with',
  `birthdate` datetime DEFAULT NULL COMMENT 'The user''s birth date. This is an optional field and may not be entered by the user.',
  `country_code` varchar(256) DEFAULT NULL COMMENT 'The user''s country code. This is an optional field and may not be entered by the user.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Workflow status indicating the status of the user, valid values are: creation_pending, deleted, pre_registered, registered',
  `sortable_name` varchar(256) DEFAULT NULL COMMENT 'Name of the user that is should be used for sorting groups of users, such as in the gradebook.',
  PRIMARY KEY (`canvas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wiki_dim`
--

DROP TABLE IF EXISTS `wiki_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique id for the wiki.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key to the wikis table in canvas.',
  `parent_type` varchar(256) DEFAULT NULL COMMENT 'Type of Parent the wiki belongs to. For example, Groups or Courses.',
  `title` longtext COMMENT 'Title for the wiki.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the wiki was first saved in the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the wiki was last updated in the system.',
  `front_page_url` longtext COMMENT 'URL of the front page of the wiki.',
  `has_no_front_page` enum('false','true') DEFAULT NULL COMMENT 'True if the wiki does not have a front page or is set to NULL.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for wiki in canvas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wiki_fact`
--

DROP TABLE IF EXISTS `wiki_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_fact` (
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki dimension.',
  `parent_course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the courses table if the wiki is associated with a Course. Otherwise this field is set to NULL.',
  `parent_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the groups table if the wiki is associated with a Group. Otherwise this field is set to NULL.',
  `parent_course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the wiki''s course. If the wiki is not associated to a Course, this field is set to NULL.',
  `parent_group_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the wiki''s group. If the wiki is not associated to a Group, this field is set to NULL.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the accounts table that this wiki belongs to. Helpful for directly finding the account associated with the wiki, irrespective of whether it belongs to a Course or a Group.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Root account Id of the account the wiki belongs to. Foreign key to the accounts table.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term table of the course this wiki is associated with. Otherwise this is set to NULL.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to the group categories table of the group this wiki is associated with. Otherwise this is set to NULL.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for wikis.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wiki_page_dim`
--

DROP TABLE IF EXISTS `wiki_page_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_dim` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Unique id for the wiki pages.',
  `canvas_id` bigint(20) DEFAULT NULL COMMENT 'Primary key for the wiki pages table.',
  `title` varchar(256) DEFAULT NULL COMMENT 'Title of the wiki page.',
  `body` longtext COMMENT 'Body of the wiki page. Redshift will only load the first 256 bytes of the body.',
  `workflow_state` varchar(256) DEFAULT NULL COMMENT 'Current state the wiki is in. For Example, active, unpublished, deleted.',
  `created_at` datetime DEFAULT NULL COMMENT 'Timestamp when the wiki page was created in the system.',
  `updated_at` datetime DEFAULT NULL COMMENT 'Timestamp when the wiki page was last updated in the system.',
  `url` longtext COMMENT 'URL for the wiki page.',
  `protected_editing` enum('false','true') DEFAULT NULL COMMENT 'Editing protection for the wiki page. It is false by default.',
  `editing_roles` varchar(256) DEFAULT NULL COMMENT 'Users or roles who can edit a wiki page.',
  `revised_at` datetime DEFAULT NULL COMMENT 'Timestamp the wiki page was last revised in the system.',
  `could_be_locked` enum('false','true') DEFAULT NULL COMMENT 'True if the wiki page can be locked. This prevents it from being visible to others until ready.',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Attributes for wiki pages in canvas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wiki_page_fact`
--

DROP TABLE IF EXISTS `wiki_page_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_fact` (
  `wiki_page_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wiki pages dimension.',
  `wiki_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the wikis dimension.',
  `parent_course_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the courses table if the wiki that owns the wiki page is associated with a Course. Otherwise this field is set to NULL.',
  `parent_group_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the groups table if the wiki that owns the wiki page is associated with a Group. Otherwise this field is set to NULL.',
  `parent_course_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the wiki page''s course. If the wiki page is not associated to a Course, this field is set to NULL.',
  `parent_group_account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the account dimension for the account associated with the wiki page''s group. If the wiki page is not associated to a Group, this field is set to NULL.',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the user table.',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the accounts table that this wiki page belongs to. Helpful for directly finding the account associated with the wiki page, irrespective of whether it belongs to a Course or a Group.',
  `root_account_id` bigint(20) DEFAULT NULL COMMENT 'Root account Id of the account the wiki belongs to. Foreign key to the accounts table.',
  `enrollment_term_id` bigint(20) DEFAULT NULL COMMENT 'Foreign key to the enrollment term table of the course this wiki page is associated with. Otherwise this is set to NULL.',
  `group_category_id` bigint(20) DEFAULT NULL COMMENT '(Not implemented) Foreign key to the group categories table of the group this wiki page is associated with. Otherwise this is set to NULL.',
  `wiki_page_comments_count` int(10) unsigned DEFAULT NULL COMMENT '(Deprecated) No longer used in Canvas.',
  `view_count` int(10) unsigned DEFAULT NULL COMMENT 'Number of views per wiki page.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Measures for wiki pages.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 15:28:46
