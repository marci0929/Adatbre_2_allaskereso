-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 25. 16:41
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `allaskereso_db`
--
CREATE DATABASE IF NOT EXISTS `allaskereso_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `allaskereso_db`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allas`
--

DROP TABLE IF EXISTS `allas`;
CREATE TABLE `allas` (
  `id` int(11) NOT NULL,
  `allas_neve` varchar(200) NOT NULL,
  `allas_leirasa` varchar(9999) NOT NULL,
  `munkakor_id` int(11) DEFAULT NULL,
  `hirdeto_id` int(11) NOT NULL,
  `kapcsolat_id` int(11) NOT NULL,
  `diak_vallalhatja` tinyint(1) NOT NULL,
  `helyszin_id` int(11) DEFAULT NULL,
  `kezdes_idopontja` datetime NOT NULL,
  `berezes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `allas`
--

INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(1, 'AUTOMATION TEST ENGINEER', 'Looking for Selenium engineers...must have solid java coding skills I have several openings some 3 month to hire some 6...must be able to go PERM  This can be someone with 0-5 years of experience. Most important qualities are Eagerness and Aptitude. POSITION PURPOSE - Do you want to be on the forefront of cutting edge technology, introduce solutions to problems that didnt exist before, and have the ability to see the result of your successes? Our client assures growth by collaborating with development teams and creating tools that aid engineers in building, testing, debugging, and releasing software. We touch millions of users by increasing the rate of development and ensuring our products are methodically tested. We are experts in software health, testability, and sustainability. As a Software Engineer in Test at our client, you can expect to build flexible and scalable solutions while working on some of the most complex challenges in large-scale computing by utilizing your skills in data structures and object oriented programming. MAJOR TASKS, RESPONSIBILITIES AND KEY ACCOUNTABILITIES - Lead and contribute to engineering efforts from planning to execution and delivery to solve complex engineering problems in tools and testing.  Design and build advanced automated testing frameworks.  Build tooling to help Developers measure and increase their velocity.  Adopt best practices in software health, testing, and sustainability.  Analyze and break down complex software systems and collaborate with Development teams to improve the overall design. NATURE AND SCOPE -  Typically reports to Manager Test Engineering  No associates report to the person in this role on a permanent basis  Analyze and resolve complex quality issues critical to solution delivery  Fast-paced environment of freedom and responsibility PREFERRED QUALIFICATIONS  Hands on Java Development experience  Proficient in Ab Initio ETL and Batch testing  Hands-on knowledge of Soap UI, ITKO Lisa, and Selenium  Hands on experience with Unix, KSH, and Bourne Shell Scripting  Strong scripting knowledge with Java, Groovy and Jmeter  Strong development experience working on web services (REST and SOAP)  Experience building test automation frameworks for web services using Soap UI, Groovy, or Lisa  Proficient in SQL  Working knowledge of SVN and Jenkins  build and development process  eCommerce/Retail QA experience  Excellent written and verbal communication skills  Self-motivated with a strong work ethic and a positive attitude  Desire to work in a fast-paced, results orientated team  Experience with a scripting language such as Perl  Passion to understand, learn, dissect and improve new technologies  Proficient in one or more of the following: Retail applications, Windows platform, UNIX platforms, JAVA, Relational Databases, Websphere Application Server, Websphere Commerce, Websphere MQ  Comprehensive understanding of systems, applications and networks KNOWLEDGE, SKILLS, ABILITIES AND COMPETENCIES -  Proficient in one or more of the following: Retail applications, Windows platform, UNIX platforms, MVS COBOL, JAVA, J2EE, Relational Databases, Websphere Application Server, Websphere Commerce, Websphere MQ, Networking (Voice, LAN, WAN), SAP, Siebel, Peoplesoft  Comprehensive understanding of systems, applications and networks  Strong problem solving and analytical skills  Strong oral and written communication skills  Ability to coordinate and collaborate across cross-functional teams', 39, 35, 18, 0, 25, '2022-07-27 00:00:00', 757681),
(2, 'Information Security Engineer', 'The University of Chicago has a rapidly growing security program with many opportunities for a motivated person to work in a variety of roles and many technical areas.  This position is responsible for providing incident response, information security assessment, monitoring, and system administration under the general direction of the Information Security Officer and the Lead Information Security Engineer. Essential Functions: Execute IT Security Network Monitoring and Incident Response procedures. Lead or participate in IT Security projects. Administer IT Security systems, including updates, backups, and upgrades Consult, advise, and provide security assessment services to application development or acquisition projects to assess security requirements and controls and to ensure that security controls are implemented as planned. Research security issues and contribute to IT Security communications, web pages, blogs, and awareness materials. Document internal processes, write security standards and guidelines. Other duties as assigned  Qualifications:Bachelor\'s degree OR a minimum of four years of experience in the Information Technology field OR an equivalent combination of education and experience required.  Minimum two years of professional experience in a technical Information Security role required. Experience administering linux/unix systems is required. Experience administering Windows systems is preferred. Experience with programming or scripting languages such as Perl or Python strongly preferred.  The University of Chicago is an Affirmative Action/Equal Opportunity/Disabled/Veterans Employer and does not discriminate on the basis of race, color, religion, sex, sexual orientation, gender identity, national or ethnic origin, age, status as an individual with a disability, protected veteran status, genetic information, or other protected classes under the law. For additional information please see the University\'s Notice of Nondiscrimination.Staff Job seekers in need of a reasonable accommodation to complete the application process should call 773-834-1841 or email talentacquisition@uchicago.edu with their request.', 11, 42, 2, 0, 18, '2022-12-26 00:00:00', 608640),
(3, 'Business Solutions Architect', 'GalaxE.SolutionsEvery day, our solutions affect people throughout the world. From Fortune 100 companies to start-ups, GalaxE develops and implements strategic projects that are critical to the success of customers businesses and the lives of tens of millions of people. For over twenty-five years, we have grown and evolved into a multi-national firm that employs over 2000 team members worldwide. But were not done evolving. It took collaboration and innovation to get here, and it takes collaboration and innovation to get where we (and our customers) want to be tomorrow.   What does this mean for our employees? They have the security of an established company, with the benefits of working for a company where great minds, hard work, leadership and innovation are highly regarded and rewarded. As Thomas Edison said, Theres a way to do it better  find it. We want our employees to find it. Were looking for creative people, with an entrepreneurial spirit, looking to work on awesome projects! Sound like you? Come work with us! Find out for yourself what it means to be part of the GalaxE team. Its not always easy, but important work never is. #WeAreGalaxE  Develop a practical roadmap for an enterprise-wide BI reporting and analytics platform with consideration to business objectives, technological considerations and budget. Define the overall BI data architecture which could include: ETL processes, ODS, EDW, data marts and data lakes.Provide BI technical and architectural guidance to project and project teams to ensure that new initiatives enable effective data reporting.Develop new reporting solutions if requiredIdentify, evaluate, and provide proposals for solutions to identified process and data quality issuesDocument best practices and methodologies for development standards, data governance, version control, deployment and change management.Perform quality assurance testing of reports and dashboards, and perform user acceptance testing (UAT). Technical Experience:   Core understanding of Business Intelligence / data warehousing technologies, methodologies, and techniques of: data discovery, data sources, presentation layer, etc., with proven experience with delivering successful solutionsExcellent knowledge of data warehouse principles and reporting.Experience in the design and building of enterprise data warehouses.Extensive experience in BI report, web and mobile dashboard development. Experience in multiple database platformsExperience with data analysis, assessing data quality and developing corrective actionsThorough understanding of complex large scale data modelsUnderstanding of common SDLC practices/methodologiesExperience working with end users to gather requirementsExperience using data discovery toolsUnderstanding of RDBMS', 5, 30, 24, 0, 14, '2022-08-15 00:00:00', 611268),
(4, 'Java Developer (mid level)- FT- GREAT culture, modern technologies, career growth', 'Java DeveloperFull-time/direct-hireBolingbrook, IL Our client is a leading edge software development organization in a unique and interesting industry, and will provide training to help in on boarding.   They have an excellent culture which is energetic, challenging, team oriented, casual (jeans are OK), have work/life balance, and an outstanding benefits package. They encourage communication and have an atmosphere where creative bright minds are rewarded.  They are looking for a Java Developer to join their company.  This position will give someone the ability to have input in to systems design and grow with the company.  This person will work with a team that is focused on the development and maintenance of various applications supporting their clients.  This position will be building applications from scratch and be very involved in the implementation process.  The ability to communicate and work directly with clients is essential. The successful candidate will be a self-directed problem solver with experience in application design, Java/JDBC development, and multi-threading. If you are interested, please email your resume or contact KGalecki@TransTechIT.com Overview:The primary application this person will initially be working on serves as a middle tier; backed by a relational database (Oracle, SQL Server, MySQL) via JDBC, and fronted by the companys transaction-based law enforcement message switch via proprietary TCP/IP protocols. Primary Responsibilities:- Develop robust, high performance, flexible applications- Analyze and diagnose application errors- Write application documentation- Clearly communicate status to management Required Skills:- Core Java with experience creating JDBC interfaces to relational Databases- Multithreading (basic experience)- Able to develop and work on a Linux, AIX, or a Unix derived OS - SQL- Socket level messaging (basic experience)- Understanding of data structures- Self-directed problem solving- Be able to clearly communicate both verbally and in writing- Bachelors Degree in Computer Science Preferred Skills:- C and/or C++ - Knowledge of one or more scripting languages- Experience with some type of version control tool, preferably a DVCS- Socket level messaging Non-Technical Requirements:- Must be able to pass state and federal background checks for all states in the union- Willingness to travel throughout the United States as required (less than 20%)- Minimum 3 years relevant experience', 4, 76, 10, 0, 24, '2022-11-20 00:00:00', 560285),
(5, 'DevOps Engineer', 'Midtown based high tech firm has an immediate need for an innovative DevOps Engineer to help define Dev / Ops related processes, build out the automation.  In this position, the Dev / Ops Engineer will need to engineer technical solutions as well as perform process engineering. The ideal candidate has strong scripting skills for automation as well experience with configuration management, server deployment, and continuous integration and experience with tools such as Chef, Puppet, etc.  Must have experience with virtualization using VMware and Linux experience is preferred.  Experience with GO, Docker, Ansible, Microservices, and the Cloud are highly desired.   This is a permanent position with an innovative technology firm in Midtown that offers excellent benefits including bleeding edge technology, very generous PTO, matching 401(k), high-tech office environment, casual dress and a collaborative culture.  Need is IMMEDIATE!!    Category: Developer / Architect -Other', 7, 47, 1, 0, 3, '2022-12-09 00:00:00', 767065),
(6, 'SAP FICO Architect', 'We are looking for a Senior SAP FICO Architect to join us fulltime and support our ongoing projects and customers. Must have excellent Pre-sales experience.Consultant should be ready for 100% travel. If interested, Please send us your updated resume, best time and contact numbers to girish(dot)bandaru(at)yash(dot)com to discuss more on this opportunity. Thanks & Regards Girish BandaruYASH Technologies773-828-4341girish.bandaru@yash.com', 51, 20, 5, 1, 4, '2022-10-21 00:00:00', 798053),
(7, 'Network Engineer', 'Network Engineer Job Description A Network Engineer is responsible for analyzing, designing, installing, configuring, maintaining and repairing of network infrastructure and application components. A Network Engineer performs a wide variety of evaluation, maintenance, installation and training tasks to ensure the computer network performance meets company and user satisfaction. A Network Engineer also provides direction, information, and recommendations regarding network configurations and installations. PRIMARY DUTIES AND RESPONSIBILITIES:   * Maintain a thorough understanding of the basics behind the Internet and its workings (DNS, Security, IP Routing, HTTP, VPN, Email Routing, SPAM, etc.) * Configure and setup Cisco Firewalls, VPN Concentrators and Security appliances for access to vital business applications * Design, setup and configure complex switching environments * Design, setup and configure complex wireless networking that supports open or secured access and the ability to support voice and video applications * Maintain a thorough understanding of Local Area Networking * Assist in the design of multi-server environments including IP address schemes, DNS, WINS, EtherChannel (Bonding), etc. * Configuring and installing client and server network software for upgrading and maintaining network and telecommunication systems. * Maintaining multi-site network operations and software applications, operating systems and regular maintenance with both private and public facilities * Managing assigned projects and program components to deliver services in accordance with established objectives. * Responding to inquiries from staff, administrators, service providers, site personnel and outside vendors and etc. to provide technical assistance and support * Supervising the administration of systems and servers related network to ensure availability of services to authorized users.  Date Posted: 06/10/2016', 9, 12, 7, 0, 22, '2022-08-19 00:00:00', 426627),
(8, 'Sr. Web Application Developer (Cloud Team) - Chicago', 'Bluebeam is looking for talented sr. web developers with a passion for building robust, performant, scalable, high availability web applications. You should have extensive web development experience including designing RESTful services utilizing relational and no-sql databases in a testable framework.  Want a peek at who you would be working with? Our software developers are friendly, fun, intelligent, hard-working team members devoted to developing software right.  They have an ability to see the big picture throughout the design and development process.  We are highly-collaborative so you should have a capacity to contribute to and learn from the team in constructive debates in order to coalesce multiple points of view into effective unified solutions.  We work in small fast-paced scrum-agile teams. You would be working alongside software engineers, and product and project managers who are self-starters passionate about delivering clean, dependable software solutions.  To work well with the team you should have an ability to clearly articulate solutions to complex problems both to technical and non-technical people.   What we\'d need to see:5+ years of experience in a related field (Candidates will be considered for engineer or senior engineer based on experience)Bachelors degree or higher in a computer science or equivalent fieldExtensive use of APIs and understanding of HTTP and REST architectureExperience using OO methodologies in designing software solutionsStrong understanding of design patternsProven ability to work in a rapid release production environmentFull understanding of the SDLC Experience with developing scalable software systemsAbility to clearly articulate solutions to complex problems; when developing solutions, ability to see the big picture What wed love to seeComfort with working in an Agile/SCRUM environmentProven Web Development experience in .NET technologies, particularly C# and Web APIUnderstanding of machine learning algorithmsExperience with cloud technologies such as Azure or AWSExperience developing microservice-based architecturesAbility and propensity to generate and share extremely delicious baked goods  If you think you are a good match for Bluebeam, please send the following:Cover Letter (Try to show us who you are.  If you send us the generic one you send to everyone else, we will be bummed.)ResumeSamples of your web development work (Be prepared to discuss) Learn more about Bluebeam here: http://careers.bluebeam.com/.', 32, 11, 11, 0, 2, '2022-11-01 00:00:00', 417007),
(9, 'Front End Developer', 'This is a fulltime position for a Javascript developer for a financial software, data, and media company. This role is based our of the Midtown, NY location (candidates must work onsite). You\'ll be part of a team working on the application that is the glue that holds the firm\'s main product together and is used as a communication tool, a price dissemination system and a way to receive information from all other applications within the firm. Responsibilities:   Help us design, create and build our next-generation user interface Be a key contributor in the re-architecting of our application service layers to improve our scalability, stability and performance Work with the team, our product and our customers to define priorities and the technology we use Work with other teams and learn about our search infrastructure, core databases and how we support hundreds of applications through our APIs Required Skills and Experience:   3+ years of production-level development Solid JavaScript knowledge Must want to and like working on UI Preferred:   An understanding of C++ fundamentals Experience working on other highly visible applications  Start Date: 06/03/2016', 36, 71, 3, 0, 17, '2022-10-24 00:00:00', 752449),
(10, 'Application Support Engineer', 'SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. They are looking for an Application Support Engineer (or a Junior Technologist) to join a growing team to provide support to our high profile media customers. The Application Support Engineer is a technical detective * not only do they diagnose and investigate customer issues, they are also responsible for understanding how each of the services within the client Service Oriented Architected environment work together, as well as ensuring that the overall health of our services is maintained. The ideal ASE is required to have solid written and verbal communication skills, a strong technical mindset, and a knack for solving problems. If your ideal job is to read a list of steps and perform them in order, this is not the job for you. The ASEs like to get their hands dirty and figure things out themselves. If a customer reports an issue, our ASEs dive right in and root out the cause. They\'re the type of people who get a new toy and take it apart to figure out how it works. They don\'t need an instruction manual. Every day in the life of our ASE is different from the last. One day, you may be in charge of investigating a complex customer issue that requires diving into custom Java code. The next, you may be tasked with monitoring system health and investigating environmental issues that arise. After that, you may be debugging a Flash, iOS, or HTML5 player for a high profile client.ResponsibilitiesOperate and support a suite of Java-based Web Services. Work with ticketing system to respond to customer issues.Work with internal team to monitor, isolate and resolve customer-impacting conditions in multiple data centers.Diagnose problems with our Web-based enterprise applications.Documentation of processes involved with support duties for internal customers and end-users.Contribute in writing and in person to root cause analysis. Participate in the development and testing of internal tools, scripts and other coding projects to interface with RESTful Web Services.Support deployment of enterprise web services in multiple data centers.Act as Incident Response point communicating incident status regularly to internal and external customers.Work closely with internal teams and third party providers to deliver highly available, performant web services for customers. Work with application developers, network operations, and our QA team to troubleshoot and isolate service issues. Diagnose and analyze content issues reported by clients. Support and diagnose playback issues on mobile Apps for Windows Mobile, iOS, Androids, tablets, and any future device.QualificationsA keen analytical, structured and detail-oriented approach to problem solving and troubleshooting. Customer-first attitude and strong written and verbal communication skills. Adept and comfortable working in a rapidly changing environment required.Foundational knowledge of the HTTP and client/server interactions. Experience working with and supporting web based services and applications.Experience using HTTP debugging tools. Strong foundation in one or more of following technologies desired: Java, Groovy, Ruby, JavaScript, and JQuery.Foundational knowledge of Linux OS and command line operations.Fundamental knowledge of video codecs, containers, and formats.Bonus Experience:Video encoding and transcoding systems administration and operation.Familiarity with shell scripting and GNU tools.Experience with Splunk or other log-based troubleshooting tool a plus.', 44, 43, 25, 1, 16, '2022-07-13 00:00:00', 475097),
(11, 'OpenStack Engineer - 12185', 'JOB DESCRIPTION:As a senior member of the team, you will be responsible to provide technical leadership to Development and QA to deploy, operate, maintain and evolve our Openstack based cloud infrastructure in private cloud. We are looking for someone who has passion for developing scalable, secure and enterprise-grade deployments and enjoys working with a team of dedicated engineers. Responsibilities: Evolve Openstack based infrastructure, server deployment strategies and testing to support our goal of 100% up-time and quick turnaround of deployments for the engineering organization.Work closely with Development and QA engineers to build a robust Openstack based cloud solution.Develop and document the best practices for deploying Cloud solutions.Design and develop new features in Openstack infrastructure.Requirements:3+ years experience in architecture, design and deploying private cloud solutions with Openstack.Proficiency in Openstack components and technologies. Experience with automated scalable deployments will be a big plus.Familiarity with Openstack systems management concepts, processes and standards; capacity/performance management and tuning; and storage and network managementExperience with automation using configuration management tools. Experience with Salt will be a big plus.Experience with scripting languages. Proficiency in Python will be a big plus.Experience across the entire software development lifecycle from requirements analysis to design to development to test and integration. Position logistics:Candidates must be currently authorized to work in the USFulltime Permanent positionLocal candidates strongly preferred About the Client:This client has produced a range of award winning security and cloud solutions that are at the forefront of where these two domains meet.  They have been profitable and dynamic because of the supremely qualified team that they have developed and hired.  They are currently privately held. About Maxonic:Since 2002 Maxonic has been at the forefront of connecting candidate strengths to client challenges.  Our award winning, dedicated team of recruiting professionals are specialized by technology, are great listeners, and will seek to find a position that meets the long term career needs of our candidates.  We take pride in the over 5,000 candidates that we have placed, and the repeat business that we earn from our satisfied clients. Interested in Applying?We cant wait to see your resume!  Please apply below with your most current resume and anything else youd like us to know about you  commute preferences, desired work environments, etc.  We promise to get back to you within 24 hours.  You should also feel free to email Nina Schindler (nina@maxonic.com) or call 408-739-4900 x 123.', 12, 27, 12, 1, 23, '2022-10-09 00:00:00', 598583),
(12, '9001 Data Security Administrator - Unix & IAM', 'Must have skills: UNIX, IAM (Identity Access Management), Scripting knowledge, and 5+ years of total experience in this role required. OIM (Oracle Identity Manager) or other similar tools are required. The ideal candidate has worked as a Systems Administrator and/or Information Security Analyst in the past.Nice to have skills: Knowledge of SQL, coding languages, and Windows are really nice to have. Active Directory is also really nice to have. DescriptionThe ideal candidate for this position will be a proactive and self-motivated professional who will work with other team members to manage access controls for our client\'s key information resources residing on multiple platforms, with a focus area in Windows, UNIX, Linux. The successful candidate will have strong scripting skills to support the automation effort within the team. Education/Experience: Bachelor degree in computer management, information security or equivalent job experience CISSP, CISA, CISM and other comparative information security certifications are preferred 5 to 7 years computer security experience required Responsibility level: Provide support in account provision and de-provision in Windows and UNIX systems in Active Directories/UNIX Enterprise Directories Complete access request processing as per pre-defined sets of procedure and within agreed Service Level Agreements (SLA), resolve problem tickets and assist other security analysts as needed Document access management procedures for assigned platforms, databases and applications; keep the access management procedures up-to-date Proactively identify audit and compliance access related issues to reduce the risk of security exposures on the support systems and applications; coordinate access management related audit and compliance tasks, such as user access reporting and other relevant research and investigation Flexibility to work adjusted hours, after hours and weekends to accommodate and support the existing servers/applications maintenance windows Identify process automation opportunities on existing access management practice. Work with team members to design and develop solutions to streamline and automate existing manual process Flexibility to work adjusted hours with Global Team members as needed to support training and processing needs. Exercises independent judgment with minimal direction from supervisor Qualifications/Requirements: Detailed knowledge of the security sub-subsystems and 3rd party security products such as Oracle Identity Manager(OIM), Random Password Manager (RPM), Active Roles Servers(ARS), Etc., Subject matter expert on UNIX and database security products and their use on protecting information resources Ability to gather and document business requirements and implement solutions to address them Good working knowledge of Identity Access Management lifecycle and processes Understanding of information security principles and IT infrastructure including operating systems, applications, communications and network protocols. In-depth and proven knowledge in building automated solutions using various coding languages (Java, C#, VBA, vbscript, Perl and Shell script, etc.) is really nice to have. The ability to work effectively with other functional areas and understand the operational and cultural issues relevant to achieving superior results Must be flexible and able to manage multiple tasks and priorities on very tight deadlines. Be a self-motivated and results oriented individual with an attention to driving aggressive project timelines and schedules Ability to work independently and in collaboration with others to achieve a high level of success Strong interpersonal and collaboration skills with the ability to develop, maintain and foster constructive relationships with others Dynamic, hard-working and ambitious individual, with excellent oral and written communication skills Have an attention to detail and advanced analytical and troubleshooting skills', 21, 71, 4, 0, 8, '2022-12-21 00:00:00', 236320),
(13, 'Software Engineer Manager', 'VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is seeking an engineering manager to lead a team of 3*6 engineers working on the server side of our industry-disrupting clearing platform.Ideal candidate will be:Experienced. Have extensive experience building back-end applications and services, and managing engineersPassionate. Driven to improve your managerial skill set every day. Keen to solve interesting problems with creative and simple solutions.Pragmatic. Would rather deliver a 40% solution in two weeks than an 80% solution in six.Introspective. You recognize your strengths and seek to maximize them. You recognize your weaknesses and work around them.A good team member. We believe in the profound impact that*s possible when teams of like-minded individuals set their sights on a common goal.A mentor and coach. You embrace the role of teaching and helping others get better.ResponsibilitiesManage staffing and career development of a distributed team.Represent cultural values and coach team members.Build a team that is results-oriented and collaborative.Deliver great software in a predictable and transparent way.Hire software engineers and software engineers in test.Evaluate business needs and effectively prioritize work.Qualifications RequiredFour years of professional software engineering experience.Four years of software engineering management experience.Experience with agile software development practices.Readiness to travel occasionally.Qualifications Preferred Java and OSS fluency.Deep technical competence.Experience with service-oriented architectures.Financial services background.', 26, 44, 14, 0, 13, '2022-09-12 00:00:00', 690936),
(14, 'Sales Engineer - Los Angles', 'Genesis10 is currently seeking a Sales Engineer for a steel company in Los Angeles , CA. This is a direct hire position. Summary This position leverages strong commercial and technical skills and industry experience to recognize customer needs and apply the company capabilities and technology across the full portfolio of the products and services. Responsibilities:   * Fully understands and leverages the company value proposition to maximize price and sales to grow and protect business * Successfully eliminates price as an objection when delivering new products or projects * Expected to demonstrate leadership skills by influencing, driving for results, and resource commitment * Provide customer expertise including leading customer negotiations, developing pricing strategies, and managing a portfolio of business accounts * Ownership of the technical relationship with customers by providing consistent and expert technical support, across the Timken portfolio of products and service, additional expertise in areas required for assigned customers when necessary. * Manage sales process for assigned customer accounts or territory * Makes target number of customer calls and attains sales targets * Delivers high-impact customer presentations that focus on capabilities, solutions and value proposition * Works with Customer Engineering on complex system analyses, including bearing selection on non-standard part number or types * Develop customer-based sales plan including sales, won/lost busines, plans to maximize pricing, new business attainment * Actively gather and submit customer and market knowledge into monthly demand planning process * Ability to assume leadership role in the regional office such as pricing authority, participating in joint sales calls, mentoring sales engineers, etc... * Shares knowledge and mentors associates, espcially in solving problems and decision making * Develops and delivers customer-training or internal training presentation Required Skills:   * Bachelor of Engineering or Master of Engineering and Business * 4 to 8 years of working with or responsibility for progressively more complex projects that involve both commerical and technical issues * Extensive background in working with customers and developing long-term customer relationships and partnerships Desired Skills:   * Bilingual candidate preferredIf you have the described qualifications and are interested in this exciting opportunity, apply today! About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. Genesis10 is an Equal Opportunity Employer, M/F/D/V  Start Date: 06/07/2016', 3, 23, 22, 1, 5, '2022-11-14 00:00:00', 540553),
(15, 'Project Manager', 'VanderHouwen has more jobs you may like! Find them here:http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetworkJoining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is looking for a Project Manager to join the team looking to expand services offered device wide. This project is in flight in the implement and roll out phase. They need someone who can hit the ground running and help carry this across the finish line.ResponsibilitiesDrive / Facilitate conversations.Schedule meetings.Clarify tools used for Project Management (MS Project, etc.)Take over presented tasks.QualificationsPMP preferred but not required.Familiarity with multiple device management.Recent Mobile Device experience required.Familiarity and adaptability to new and emerging technologies.', 20, 76, 15, 0, 11, '2022-12-08 00:00:00', 540468),
(16, 'Windows System Administrator', 'Windows Systems Administrator The Windows Systems Administrator will play a technical leadership role in a 24x7 highly-available production environment. The ideal candidate will be self-motivated and articulate, recognized as an expert with Microsoft operating systems, Win NT, 2K and 2K3, related software technologies, and have a proven history of using administrative tools and automating routine administration tasks.Day-to-day responsibilities include:Must be able to work independently to troubleshoot, perform root cause analysis, identify and isolate technical issues. Must be willing to take ownership of the issue analysis and resolution efforts and commit to \"doing what it takes\" to resolve technical issues regardless of the effort or timeframe required. Triaging as necessary for production, QA & development environments.5+ years overall experience with at least the last 2 years focused on providing technical support across a broad range of Microsoft technologiesMentor SA1 & SA2: thought leadership and setting positive examplesCapable of performing design, test and implementation of complex technical solutions and architectureAbility to lead and manage system initiatives and new projectsTroubleshooting issues related to production systems, triaging as necessary for production, QA & development environments.Work with external vendors/consultants to diagnose complex problems and drive resolutionResolve errors and alarms quickly and provide timely escalationComplete tasks required to maintain service levels and availability of all site features and functionsHelp define and support process improvementsFull-time position with on-call dutiesJob Requirements 6+ years work experience as Windows Server AdministratorMust have experience implementing and managing 75+ server environments (with server-class hardware & peripherals), located in multiple datacentersExpert understanding of and experience with Microsoft operating systems, Active Directory & Domain architecture, NTFS permissions, WINS, DNS, OS security, and systems patchingExpert understanding of and experience with IIS, Microsoft Exchange, and/or Microsoft SQL. Strong understanding of networking - routing, subnets, UDP, TCP, IP, & VLANsStrong scripting skills - PERL, batch, shell and/or VBStrong experience with NAS and/or SAN.Strong experience with implementing and using systems monitoring software (e.g. Microsoft Operations Manager)Must have experience with defining or testing disaster recovery strategiesMust have strong communication skills and ability to work individually, within a team, with other groups and with customers.Strong ability to manage vendor relationships, including contracts, negotiations, and service levels. Must have ability to communicate complex technical problems concisely and professionally to technical and non-technical audiences.Proven problem solving skills with an emphasis on quick problem resolutionAbility to work on many tasks simultaneously in a high-pressure environmentUnderstanding and experience architecting Exchange 2003 or newerExperience working in a multi-server environment is required with knowledge of clustering technologies and strategies. Previous experience with providing support for remotely connected customers and the associated technologies (e.g., Citrix, Cisco PIX) is required.Understanding of or experience supporting web serversUnderstanding of or experience with backup software and recovery strategiesUnderstanding of or experience supporting .NET applicationUnderstanding of or experience supporting Oracle or other database platforms. Education Bachelors in an engineering discipline, or Technical certification in Win NT or Win 2K/2K3, or equivalent work experience. Microsoft certifications are highly desirable.', 16, 40, 8, 0, 15, '2022-12-21 00:00:00', 611464),
(17, 'Test Lead / Test Manager', 'Location Atlanta, GAJob Title Test Lead / ManagerDuration 6 Months + High possibility of ExtensionRequired Skills: * 4+ years of experience in Software Testing and Quality Assurance.* Good communication skills* Good understanding of Telecom Network* Good knowledge and experience on preparing Test Plan and Test Strategy documents.* Great understanding of Defect detecting, tracking and reporting techniques.* Excellent Logical and Reasoning skills with keen eye to detail.--------------------------------------------------------------------------------------------------------------------------------------------Submit your resume on this position by clicking Apply button on this page or call Utpal @ 973-841-2390 and email: utpal.raj@collabera.com to contact recruiter to discuss details about this position--------------------------------------------------------------------------------------------------------------------------------------------', 6, 23, 23, 0, 1, '2022-07-28 00:00:00', 273991),
(18, 'Principal Application Analyst-Supply Chain Lawson', 'VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client seeking an individual who can apply extensive and advanced principles, theories, and concepts to the development of solutions to complex problems with innovation and ingenuity. Expert knowledge of Lawson Supply Chain modules and business practices.Responsibilities Demonstrate service excellence and positive interpersonal relationships in dealing with others, including patients/families/members, employees, managers, medical staff, volunteers, and community members, so that productivity and positive relations are maximized.Act as a system specialist or business consultant on complex projects or system, which can include planning and coordinating large scale projects or tasks across a multi-state enterprise, using cross disciplined team efforts.Provide technical and operational guidance to ensure that installed systems are working effectively and that proposed systems will meet the organizations future needs.Work with users, user groups, and vendors to gather requirements and provide fit gap analysis and effective technical solutions for the business needs.Provide documentation for testing, functional and technical designs and development processes as required by project management methodology.Develop and recommend technical support and software management standards, policies, procedures and strategies.Develop test plans to test application functionality of highly complex applications across multiple modules in support of patches, upgrades, and infrastructure and/or desktop configuration changes.Respond to and resolve reported incidents according to customer support service level agreements.Participate in problem management and troubleshooting teams on major enterprise system issues.Design, implement, evaluate and facilitate systems tests for new applications or enhancements to current applications.Proactively evaluate and make recommendations around adoption of emerging standards. Mentors others regarding integration protocols and processes.Address topics and issues that are both strategic (long term) and operational (immediate) in nature.QualificationsBachelor\'s degree or equivalent blend of education and experience.Minimum of 10 years functional experience.Proficient in Microsoft Office Products.Proficient in the development and support of integration with other applications.Minimum of 10 years* experience with the Lawson Supply Chain product suite.Qualifications PreferredMaster\'s Degree.HealthCare Information Services experience.', 31, 57, 13, 0, 7, '2022-10-23 00:00:00', 306753),
(19, 'Messaging Administrator', 'Genesis10 is actively seeking a Messaging Administrator for a direct hire position within the insurance industry for our client located in Kansas City, MO. Description:   * Our client has an exciting opportunity for a Messaging Administrator who would enjoy working for an organization that strives every day to support the public good and make a difference. You will be working in the division responsible for hardware and software infrastructure as well as providing technology resources for regulatory systems and databases. If you hold a Microsoft Certified Engineer or Certified Information Systems Security Professional certification, we want to chat with you. * This position is located in, state-of-the-art offices in the heart of downtown Kansas City which includes great restaurants, and top-notch entertainment venues. This is a full-time position in a positive and flexible environment. Responsibilities:   * Providing administration and technical support for Technical Services enterprise backup systems including: + Administering, supporting, and maintaining the Veritas NetBackup Infrastructure. + Administering, supporting, and maintaining the IBM Tivoli Backup Infrastructure. * Providing administration and technical support for the internal e-mail network including: + Microsoft Windows Server 2008, Windows Server 2012, Microsoft Exchange 2013 support. + Administering the SMTP Mail Gateway servers, Mail flow, gateway filter blocks, virus scanning and virus blocks. * Administering and supporting mobile devices and server architecture: + Installing, configuring, and maintaining Mobile Device Management servers and environment. + Setup and configuration of mobile devices. * Providing administration and support of Lyris ListManager server product including: + Microsoft Server administration and troubleshooting of Lyris ListManager server. + Back-end listserver setup and support. * Carrying a pager and responds to it during and outside of normal business hours. The pager will be carried for a week at a time on a rotating basis. * Participating in a support role for national meeting. This includes travel and supporting systems away from the office for over a week at a time at least once a year. Requirements:   * Bachelor\'s degree (B.A. or B.S.) from a four-year college or university and three years\' of related experience; or equivalent combination of education and work experience. A minimum of three years\' of experience working with Microsoft Active Directory server administration is required. * Must have strong communication skills. * Must have an in-depth knowledge of Microsoft Active Directory administration and replication. * Proficient with server and workstation hardware. * Must have a sound knowledge of desktop and server operating systems (Windows 7, Windows 2008 or 2012 server) and distributed e-mail systems. * Must have very intuitive troubleshooting skills to look at the broad picture (i.e. consider network and server in resolving desktop problems). * Strong understanding of backup software and backup retention policies. * Only W2 candidates will be considered for this position. (no third parties) If you have the described qualifications and are interested in this exciting opportunity, apply today! About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/08/2016', 14, 47, 9, 0, 10, '2022-08-22 00:00:00', 634954);
INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(20, 'Java Architect - Denver, CO - Fulltime', 'Our client in the healthcare software industry is seeking a Java Architect to join their growing team. Below is the job description, if interested please submit a word resume and the best time and number to reach you to discuss.Title: Java ArchitectLocation: Denver, CO Duration: Fulltime Salary: DOEResponsibilities: This person will be working with IT leadership, product owners, and project management to determine the architectural approach and patterns to apply to projects of the highest level of complexity Design solutions that appropriately balance technical elegance, business need, project risk, and cost Guide the development team throughout the lifecycle.10 years of experience in software development including object oriented analysis and design. Prefer Java technology stack, but similar backgrounds such as .Net will be considered3 years of experience in a team lead role3 years of experience in an application architect or solution architect roleExperience with Middle tier development using Java and related technologyWeb application developmentMobile application development on multiple platformData architecture and data movement, including OLTP systems and BI/Data Warehousing scenario', 22, 18, 17, 0, 21, '2022-12-13 00:00:00', 790343),
(21, 'IT Business Analyst', 'Genesis10 is looking for a Business Analyst for a long-term contract position in Sandy Springs, GA with our Fortune25 financial services industry client. Only W2 candidates will be considered. Description:   As a Business Analyst, you will conduct business and technical analysis for process and tool enhancements and ensures operational readiness to satisfy business partner objectives. The Business Analyst will employ a set of tasks and techniques used to work as a liaison among stakeholders and core team members in order to understand the structure, policies and operations of an organization, and to recommend solutions that enable the organization to achieve its goals. Responsibilities:   * Business Analysis, Planning and Monitoring * Requirements Management and Communication * Enterprise Analysis * Requirements Analysis * Solution Assessment and Validation * Work with core team members to elicit, organize, document and validate business rules, functional and non-functional requirements * Partner with the product manager to build cohesive release content * Translate stakeholder requests into a set of system features. These in turn are detailed into specifications for functional and nonfunctional requirements * Ensure the functionality, usability, performance and supportability of the requirements * Assess capability gaps and identify new capabilities required by the enterprise to meet the business need * Understand the organizations business and how the technology supports the business * Assess or evaluate the impact of the change the stakeholder is requesting * Translates business needs into technical requirements and ensures all systems support business needs * Ensure the process of reviewing, selecting, and designing the solution is done in a way that maximizes value delivered to stakeholders * Assess defects and issues; determine the business impact and severity of the defect. Conduct analysis and root cause of defect * Facilitate meetings with the direct involvement of both stakeholders and developers to gather feedback on requirements and solution results and to produce the following key deliverables: + Actionable Requirements (Stories) + Process Maps + Gap Analysis + Scenarios and/or use cases + Data Flow Diagrams + Analysis and submission of Change Control Forms Requirements:   * 5-7 years\' experience in analysis with expertise in different technologies, business areas, application wide analysis, and proposal of solutions * Ability to interpret the domain in order to capture meaningful requirements * Strength in assembling, analyzing, and representing business requirements * In depth experience performing feasibility analysis, scope projects, prioritize deliverables, recommend alternative solutions and project strategies, and engage in negotiations * Responsible for high level implementation plans, data and process models, cost estimating, cost benefits analysis, and return on investments * Experience facilitating workshops such as JAD, RAD, and DRP sessions, etc. * Expert skills in MS Office (Word, Excel, PowerPoint) and strong Visio skills preferred If you have the described qualifications and are interested in this exciting opportunity, please apply! Only W2 candidates can be considered. About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/30/2016', 38, 38, 20, 0, 19, '2022-09-20 00:00:00', 272901),
(22, 'IT Sales Manager', 'Great opportunity for driven, energetic IT Sales Professionals in chicago! Our client is a leading Global IT services Provider based in the tech mecca of the world- Silicon Valley & are looking for High energy, IT sales Professionals to join their team in Midwest . The position offers working remotely ! 7-10 yrs IT Services Sales experience.   Must have a mix of IT Services Project selling (50%) and Staff Augmentation *  Onsite Placements with direct end clients (50%).    Industry segments preferred in Retail / Manufacturing / Supply Chain / Product Engineering / Mobility. A SALES HUNTER MENTALITY IS A MUST! Must have a proven sales track record of success of carrying a quota of $3- 4.5 Million dollars Competitive Base Salary + Commission !', 1, 56, 19, 1, 12, '2022-08-25 00:00:00', 543704),
(23, 'Sr. Systems Test Engineer (PERM)', 'Our client is the worlds premier voice and electronic interdealer broker and the source of global market   information and commentary for professionals in the international financial markets. The Group is active in the wholesale markets in interest rates, credit, commodities, foreign exchange and equity derivatives.Our client is currently seeking a Sr. Systems Test Engineer  for a fulltime position in Parsippany, NJ.Principal Responsibilities & AccountabilitiesConduct the entire system certification effort for a project with minimal supervision.Serve as the principal system engineer for major test efforts; lead the effort of other system engineers and application testers as requiredRepresent the group in requirement, specification, and design review meetings and contribute constructive feedback to the presenters in the groups area of expertise.Create test tools to perform API level testingPerform Load and Performance Testing for C / C++, Java and Adobe Flash based applications.Create status and test result reports for management and represent the group in status meetings.Estimate certification effort for projects and ad-hoc testing requests.Determine and execute appropriate system-side testing for each project outside of requirements.Build, install and fallback software releases and database schemas in lab environments.Support operations personnel for critical production issues as needed.Write advanced tools and scripts to aid certification efforts and simplify operations procedures.Experience with VM, configuring VM on both Windows and Linux platforms CompetenciesMastery of Solaris and Linux operating systems.Working knowledge of OpenVMS and WindowsAble to install and configure new hardware and software with minimal assistance.Knowledge of Mercury Interactive suite of automated testing tools (LoadRunner/Performance Center, QTP and Quality Center)Working knowledge of TCP/IP and routing protocols.Knowledge of Microsoft Office suite of products.Working knowledge of SQL  can create ad-hoc queries to verify test results or troubleshoot issues. Oracle DBA-type experience a plus.Programming experience, preferably C/C++, Java and shell scripting.Knowledge of software methodologies (Agile and Scrum)Qualifications & Experience Minimum of bachelor\'s degree or equivalent in computer science, masters degree preferred.Atleast 4 years relevant experience on Systems testing, Load and Performance testing for C/ C++, JAVA and Adobe Flash based applications4 years experience with manual testing.Knowledge of foreign exchange/banking and market data industriesMinimum 7 years of work experience in the Information Technology industry.Working knowledge of de facto industry standard software (Oracle, HP OpenView, etc.) a plus.Knowledge of Networking Concepts is preferable.knowledge on Tervela or any MQ messaging is preferableknowledge on Google protocol buffer (GPB) and FIX/FAST is preferableknowledge on configuring VM on both Windows and Linux platforms', 45, 13, 6, 0, 20, '2022-08-20 00:00:00', 211317),
(24, 'IT Quality Consultant', 'Genesis10 is seeking an IT Quality Consultant for a 4-month contract-to-hire position with a client in Eden Prairie, MN. Genesis10 provides access to career opportunities with over 40 clients in the Twin Cities. As the #3 ranked firm for Business and IT consulting in Minnesota, we offer a variety of opportunities whether you are looking for contract, contract-to-hire, or permanent positions. Let\'s connect today! Responsibilities:   * Test Planning - Requirement/User Story review, Test Case writing; Gherkin, Feature Files * Test Case Automation - Selenium framework and/or SOAPUI * Test Case Execution - Selenium and/or SOAPUI; Some manual execution may be required * Test Execution status reports * Proactive Communication * Use of Agile principles; likely use of ATDD principles Qualifications:   * Automation & Test execution skills that involve coding in Selenium and/or SOAPUI * Communication & team work * Rally for test case and defect management; Agile project management preferred If you have the described qualifications and are interested in this exciting opportunity, apply today! Benefits of Working with Genesis10:   As a Genesis10 consultant, we are proud to offer access to the following benefits: * Medical and dental insurance * Bi-weekly payroll * 401k plan * Downtown Minneapolis/St. Paul parking allowance * Delivery Manager for employee support * Successful re-marketing program * Referral program with the opportunity to earn additional income About Genesis10:   Genesis10 is a Professional Technology Services Firm providing Staffing, Workforce Optimization and Domestic Outsourcing Solutions. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 48, 72, 16, 0, 6, '2022-09-06 00:00:00', 369394),
(25, 'USB Validation Engineer', 'VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryThis position is part of the Pre-Silicon Emulation/Post-Silicon Validation team and plays a fundamental role in bringing to market next-generation devices for our growing audio business and ensuring that those devices meet customer requirements.ResponsibilitiesDevelop and execute tests on the lab bench per the validation plan during pre-silicon and post-silicon phases of the product to ensure functionality and performance as per the datasheet.Think beyond the datasheet and around design corners to find elusive bugs. Able to think of test cases and customer usage model that may violate the assumptions of designers and systems engineers.Develop automated test framework, regression test suites in MATLAB and/or LabVIEW to optimize validation efficiency.Work with validation peers to implement best practices and continuous improvements to company validation methodologies.Collaborate closely with IC Design engineers, Systems engineers and Application engineers to understand requirements and use cases.Debug analog/digital silicon issues, board issues and Validation software/hardware tools issues.Analyze test results and identify failures/defects using business intelligence tools such as Spotfire.Work with firmware and software engineers to debug USB protocol errors.Validate USB physical layer against standard USB requirements.Develop and work with supporting HW (FPGA, DSP, ARM, 8051, JTAG, debuggers) and SW (C, Assembly, scripts) collaterals.Qualifications RequiredBS in Electrical or Computer Engineering with 5+ years of experience in related field OR MS in Electrical or Computer Engineering with 3+ years of experience in relevant areas in USB validation.Familiarity with scripting/programming languages such as MATLAB, C, Python, LabVIEW or similar.Solid hands-on experience in lab equipment such as oscilloscopes, signal generators, audio analyzers, logic analyzers, spectrum analyzers for measurement and debugging issues.Qualifications PreferredExperience in various automation framework hardware tools (FPGA, DSP, ARM, 8051, JTAG, NI Data Acquisition) or software tools/languages (Scripting languages as MATLAB, C, Python, SQL, test sequencers such as NI Teststand).Solid hands-on experience in lab equipment such as oscilloscopes, protocol analyzers, signal generators, audio analyzers, logic analyzers, spectrum analyzers for measurement and debugging issues.Self-motivated with excellent problem solving skills and attention to detail are highly valued as you will need to understand silicon, board and software interactions.Demonstrated aptitude in system understanding of various industry interface standards such as I2C, SPI, USB, UART, I2S, TDM or high-speed control/data bus as examples.', 54, 71, 21, 0, 9, '2022-10-11 00:00:00', 234296),
(26, 'Senior Product Manager', 'Do you want a chance to directly improve the customer experience for millions of customers a day?This position is a Product Manager in the Customer Experience team for Fulfillment by Amazon and Amazon Global Selling organization. Our vision is to transform global commerce by bringing selection from around the world to Customers anywhere in the world, with the same great customer experience Buyers expect from Amazon.In this role, you will set strategy and policy, build processes, and evangelize for technology solutions that allow third party Sellers from all over the world to bring hundreds of millions of new items to Amazons 11 Marketplaces worldwide. You will determine what experience these Sellers must offer our customers, create the incentives and enforcement mechanisms to achieve this experience, and frequently audit the results.Responsibilities for this position will include creation of programs that drive improvement in our key customer experience metrics, management of global programs and stakeholders, and driving alignment for new programs at high levels of the organization. This position will also have management responsibility for product managers, data analysts, and an operations team.From Jeff Bezos\' annual letter to Amazon shareholders:To further globalize Marketplace, were now helping sellers in each of our geographies - and in countries where we dont have a presence - reach out to our customers in countries outside their home geographies. We hosted merchants from more than 100 different countries last year, and helped them connect with customers in 185 nations. Almost one-fifth of our overall third-party sales now occur outside the sellers home countries, and our merchants cross-border sales nearly doubled last year. In the EU, sellers can open a single account, manage their business in multiple languages, and make products available across our five EU websites. More recently, weve started consolidating cross-border shipments for sellers and helping them obtain ocean shipping from Asia to Europe and North America at preferential, bulk rates.Fulfillment by Amazon (FBA) is an Amazon service for our third-party Sellers. The FBA team partners with Sellers and our Amazon Fulfillment Centers to create a seamless experience for Sellers to leverage our world-class facilities. 71% of our FBA Sellers report more than a 20% increase in unit sales after joining FBA. In a very real way, we are changing lives with the work we do. Our FBA employees wake up every day thinking about how to enable our Sellers to be successful on our platform. Enabling Seller success allows us to provide Amazon customers with unparalleled selection and pricing. FBA is a win for Sellers and a win for customers. Want to learn more about FBA?ˇ Sellers success stories: SellerSuccessˇ A free book of stories from small businesses/sellers, authors, and innovators that are thriving on Amazon: Transformations-ebookˇ BS or BA in computer science, engineering, math, finance, or economicsˇ 3+ years of product management or finance experience in technology focused businessˇ Excellent written and verbal communication skillsˇ Superior analytical and problem-solving skillsˇ MBAˇ 5+ years of product management experienceˇ Prior experience managing technical products or online servicesˇ Proficient with web services, online technologies, virtualization, developer tools, and user interface designˇ Entrepreneurial spirit, with track record for delivering results in fast-moving and demanding environmentsˇ History of developing business strategy in conjunction with senior leadership', 2, 72, 18, 0, 25, '2022-06-07 00:00:00', 251758),
(27, 'Frontend/UI Developer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. Their Consulting Services Team is seeking to add those with engineering knowledge / experience with the latest web and mobile technologies and come work as a Frontend/UI Developer. The Consulting Services team works with a variety of customers to deliver world class IP-based video delivery solutions. Current projects include multiple initiatives for major media companies, as well as cable operators and telecommunication companies worldwide.  The Frontend/UI Developer will be contributing to HTML5 video sites for high profile media companies, as well as to administrative consoles for media publishers and distributors using the latest JavaScript technologies. ResponsibilitiesDesign, estimate, and implement features for consumer-facing HTML5 video players based on client PDK technologies. Develop administrative user interfaces for Consulting Services customers for video management solutions.Collaborate with Project Managers and Solution Architects to plan and estimate customer solutions.Participate in a highly iterative agile development process as part of small cross-functional engineering team.Help the team diagnose and address complex client-side interactions.Qualifications BS Degree in Computer Science or a related field (BONUS).High level of communication skills. 4+ years* experience with front end JavaScript Development.CSS and HTML design implementation from wire frame to reality.Comfortable with a wide range of JavaScript technologies like Angular.JS, React, Node.js, JavaScript promises.Experience in a test-driven development environment.Team Lead experience (BONUS).', 28, 22, 2, 1, 18, '2022-12-08 00:00:00', 253032),
(28, '1001 Selenium Automation testing', 'Selenium TesterSalt Lake City , UT & Phoenix , AZQuality assurance experience more than 4 years in agile projects with a Lead role.ˇ          Hands on Selenium test automation skills is a must requirement.Test management tool experience like HP Quality center.ˇ          Quick learner and self starter.ˇ          Should be able to function with minimum supervision.ˇ          Agile project management tools experience like Rally , Agile vision etc.ˇ          Should have a very proactive and agile personality.ˇ          Should have qualities of a Ownership bearer and Responsible lead.  If you bring willingness, flexibility and a desire to impress please apply now. Resource Manager :   Payal AgrawalEmail:  payal@reqroute.com        Phone:  408-800-4331  Companies across U.S. have engaged ReqRoute, Inc to deliver skilled, dedicated IT professionals. Recruiting is our passion and we support Fortune 1000 companies with their hiring needs. We always seek to deliver competitive and sought-after career opportunities to our potential consultants and employees. We invite you to review the position requirements below and apply today if your skills match our need.    ReqRoute, Inc is an Equal Opportunity Employer. Qualified applicants will receive consideration for employment without regard to race, color, religion, sex, age, disability, military status, national origin or any other characteristic protected under federal, state, or applicable local law. (www.reqrouteinc.com)', 47, 55, 24, 0, 14, '2022-09-05 00:00:00', 570527),
(29, 'FireEeye HX - Security Engineer', 'Turnberry Solutions is in search of a Security engineer for a managed solutions team Working onsite with our client. Strong experience needed with FireEye HX clients and Mandiant Mirror Asses existing network topology and identify key system flaws Perform annual assessment of FireEye configurations Develop detailed supporting documentation regarding technical projects (such as materials to support an architecture review board) Manage customer expectation and attend all mandatory review / regulatory discussions related to the specific project being delivered Help establish baseline and plan for improvement of a large enterprise deployment of FireEye HX along with strategic endpoint security planning. Daily Responsibilities Administration of Mandiant (FireEye) Mirror Solution Experience with triage features of FireEye HX Supports customers at the highest levels in the development and implementation of doctrine and policies. Performs analysis, design, and development of firewall rules. Analyzes security threats on endpoint desktops Designs, develops, engineers, and implements solutions that meet security requirements (relating to endpoint analysis solutions). Analyzes general information assurance-related technical problems and provides basic engineering and technical support in solving these problems. Technology escalation point for endpoint agents (FireEye HX) Possesses and applies expertise on multiple complex work assignments. Exposure to at least one major industry network firewall technology Assignments may be broad in nature, requiring originality and innovation in determining how to accomplish tasks. Operates with appreciable latitude in developing methodology and presenting solutions to problems Contributes to deliverables and performance metrics where applicable. Security certification desired Advanced experience in networking (TCP/IP) protocols, computer/network security, and system administration. Background in INFOSEC operations, endpoint management, and network topology Windows and Linux skills desired Advanced experience in networking (TCP/IP) protocols, computer/network security, and system administration. Background in INFOSEC operations, endpoint management, and network topology Windows and Linux skills desired Experience with Mandiant (FireEye) Mirror Experience with FireEye HX deployment and usage experience in Information Security standard and best practices 5+ years of IT Security experience with Bachelor\'s Degree -OR- 3+ year of IT Security experience with Master\'s On occasion employee will need to travel to various customer locations. Less than 3 hours driving time. Experience with Mandiant (FireEye) Mirror Experience with FireEye HX deployment and usage Experience in Information Security standard and best practices TCP/IP and network security protocols Unix/Linux System Admin Skills', 10, 27, 10, 0, 24, '2022-12-18 00:00:00', 298921),
(30, 'Sr. Software Storage Engineer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client leads the world in helping users collaboratively solve some of the world\'s hardest computer challenges. Whether its wrangling Petabytes of data for cutting edge movie production, managing global content production workflows, exploring new sources of energy, or managing oceans of content and blending collaborative high-speed workflows with cutting-edge object storage, our client has the tools and technology to help you engineer the solution that works now - and preserves your work for decades to come. You are applying to an exceptional team that contributes to enhancing their position as a proven global expert in data management. Our client is seeking a passionate Sr. Software Storage Engineer who can turn ideas into efficient, reliable and maintainable code to work on a popular open source storage project * Ceph. In this role, you will develop and support the major components of the Ceph storage project across both user and Linux kernel implementations. You will be responsible for the planning, implementation, and support interactions with a very active open source community to deliver enterprise-class software. The challenge? Build a new storage solution based on open software, open hardware, and cloud innovations that will disrupt traditional enterprise storage. You will be coming in on the ground floor of an exciting new solution and work in a fast paced environment.ResponsibilitiesEnjoy helping others around you grow as developers and be successful. Can be autonomous and self-driven. Have an entrepreneurial mindset.Have excellent written and verbal communication skills. Get inspired on a daily basis, think of new ideas and like to share them with others. Love open source software development and being part of a community.Instruct, guide, negotiate, coordinate, analyze and organize.Interact with others in a team environment and also work alone.Complete tasks on time with and without supervision.Use logic and reasoning to identify the strengths and weaknesses of alternative solutions, conclusions or approaches to problems.Communicate information and ideas so others can understand.Analyze information and evaluate results.Qualifications Bachelor\'s degree in computer science, or demonstrated equivalent experience; master\'s degree in computer science or equivalent experience is preferred.8+ years of systems software development experience.Solid C and C++ development and debugging skills.Good systems and networking programming skills.Deep understanding of Linux and UNIX internals.Experience with clustered computing or distributed file systems; client or server computing experience.Experience dealing with scaling issues and distributed design.Experience with correct and efficient serialization of multi-threaded code.Experience with remote file access protocols (e.g. NFS, CIFS, or S3).Experience with Git, GitHub, and CI.Experience working with distributed teams, delivering enterprise quality software, and working on open source software projects.', 17, 13, 1, 0, 3, '2022-07-01 00:00:00', 421413),
(31, 'C++ Software Engineer', 'Our client is seeking a Software Developer to join the team responsible for designing, developing and maintaining the firms highly distributed, high performance order routing system for equities, options and futures. In this position you will have the opportunity to work closely with traders and other technical teams. You will be engaging the complete SDLC and the majority of development will be in C++ on Linux.If you join this team, you will:Research, design, develop and test software components and applications in a heterogeneous technology environment using knowledge of object oriented programming and C++/Linux.Analyze user needs and software requirements to determine feasibility of design within time, cost, and performance constraints.Engage in problem definition, decomposition, and solutions definition within the scope of the application and the run-time environment.Take a holistic view of systems and understand how the hardware, networking, and middleware layers integrate with software components.You should be:Able to execute on ideas quickly.Committed to innovation.Focused on the entire technical stack with an eye for building a stable, scalable, optimized environment with minimized risk.Passionate about technology and interested in exploring new technologies to find the optimal solution.Strong object oriented software developer.Requirements:Bachelor\'s degree in Computer Science, Engineering, Mathematics or related discipline or its foreign equivalent plus 5 years of progressive experience developing software applications is required.The successful candidate will be a self-motivated, free-thinker who is comfortable working in a fast-paced environment and who has the ability to propose creative and innovative solutions to complex problems.Experience with and a demonstrated understanding of Object oriented design and software development in a high-performance / high throughput environment using C++ (preferably in a Linux environment) is required.Experience with .NET or Java preferred.Excellent attention to detail and an appreciation for the balance between the perfect technical solution and time to market considerations.Ability to take ownership of projects and assume the responsibility for success.Provide innovative ideas to improve the ability of our systems and our team.', 24, 73, 5, 0, 4, '2022-12-24 00:00:00', 753859),
(32, 'Domestic Outsourcing Business Development Executive', 'Genesis10 has an incredible opportunity for a Business Development Executive to join our highly-successful Domestic Outsourcing Service Line. The Business Development Executive will be responsible, on a national-level, for acquiring new client logos through consultative-selling of the full spectrum of Genesis10\'s Domestic Outsourcing services. Genesis10\'s core competencies in Domestic Outsourcing include, but is not limited to Infrastructure, Application Development, and Managed Services. Today, Genesis10 has 6 certified Delivery Centers from which we provide services from today to the Fortune 500. The Delivery Centers are located in: Atlanta, Cleveland, Dallas, Detroit, Kansas City, and Orlando. Becoming a Genesis10 Domestic Outsourcing Business Development Executive is an excellent career move. Here is what your sales colleagues like most about being in sales at Genesis10: * Genesis10 will not cap your earnings and will do everything we can to empower you to exceed your compensation goals. Many of our sales team members are some of the highest paid in the industry! * Genesis10 has a proven track record with referenceable clients providing Domestic Outsourcing Solutions and is considered an early-adopter * Genesis10\'s Delivery Center Network if 6 locations in Tier 2, 3 and 4 cities across the United States has been recognized by the market analysts as a key differentiator * You are not on your own! Get the support you need to drive your success: + Executive Level Support: You will have direct-access to the entire Genesis10 C-suite to assist you in opening up doors, creating sales strategy, and closing deals + Dedicated Marketing Team: You will have a marketing team focused on ensuring that you have the sales collateral required to support the business development lifecycle from sales presentations, to whitepapers to reusable RFP content * Genesis10 is not a job; it is a family and a career where you can enjoy sustained success. Most of our sales organization has been at Genesis10 for 7-15+ years * Experience work/life balance and trust from your organization. We realize that sales is a difficult role, requiring a lot of hard work and travel at times. Genesis10 is an organization that recognizes success is predicated on being in balance and enjoying the fruits of your labor How You Will Make a Difference:   As a Senior Business Development Executive, with experience selling outsourcing solutions, you will help drive domestic outsourcing business to Genesis10. * Utilizing existing relationships to drive Domestic Outsourcing business to Genesis10 * Using your \'hunter\' sales approach, with the support of a top-tier delivery team, to open up new relationships and establish an optimal sales pipeline * Manage the end-to-end sales process for all pursuits, including lead-generation, client communications, on-site presentations, proposal development, and negotiation * Build strong internal relationships with Genesis10s\' C-level executive team and the domestic outsourcing delivery team to gain optimal sales-support * Effectively collaborate with Genesis10\'s Delivery Center Operations Team to ensure that all awarded service proposals fully meet the client\'s needs Qualification Requirements:   * Multiple years of proven success selling global offshore or domestic/onshore solutions * Established network of Directors, Vice Presidents, and C-Level relationships to help drive business * Tenured history, having worked multiple years for a recent employer * Demonstrated ability to apply a sales \"hunter approach to driving new business * Experience overseeing the buildout of proposals and contributing to the RFP process * Expert understanding of client outsourcing decision-criteria * Proven ability to work with remote or geographically disperse teams * Ability to travel to client-sites and Genesis10 Delivery Centers for onsite presentations If you\'ve met these qualifications, I want to talk with you. If you are still reading, you must be interested! Reach out to me (Remster Bingham, Vice President of Recruiting rbingham@genesis10.com) today and gain a first-hand understanding of why Genesis10 is a career and not just a job! The Company:   Genesis10 is a professional technology services firm providing staffing, workforce optimization and domestic outsourcing solutions. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We offer benefit options to fit your needs and a support staff that works with you from placement throughout your engagement providing career mentoring and support project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. Genesis10 is an Equal Opportunity Employer, M/F/D/V  Start Date: 07/05/2016', 50, 45, 7, 0, 22, '2022-07-06 00:00:00', 420858),
(33, 'Lead Mobile Product Manager- 12255', 'Our client is a cloud-based education services company.  They are well funded and have a solid staff of technical and business professionals. They currently have a requirement for a Lead Mobile Product Manager to work in their Mountain View facility. Responsibilities:Own the roadmap for both the Android and iOS appsInteract with business development and sales to gather requirementsInteract with account managers to discover user pain pointsPerform analyses of KPIs and measure behavior across the platformPrepare PRDs and the roadmapWork with engineers to deliver all features and ensure releases go out in a proper cadenceRequirements:BA/BS in Computer Science or related technical field or equivalent4+ years Product ManagementExperience with Scrum/Agile & KanbanAbility to understand highly technical issues and distill down to a product level understandingPreviously been involved with startupsStrong UI/UX and wireframing experienceExperience with both mobile (Android, iOS) and web-based applications Position logistics:Direct HireW2 candidates onlyLocal candidates strongly preferred Whats in it for You:Cool, fast growing and nimble company with a central Silicon Valley location.Great opportunity to enhance or solidify your skills with an excellent, diverse and experienced team.Work with key management, across business units and have a major impact on how the business is run. About Maxonic:Since 2002 Maxonic has been at the forefront of connecting candidate strengths to client challenges.  Our award winning, dedicated team of recruiting professionals are specialized by technology, are great listeners, and will seek to find a position that meets the long term career needs of our candidates.  We take pride in the over 5,000 candidates that we have placed, and the repeat business that we earn from our satisfied clients. Interested in Applying?We cant wait to see your resume!  Please feel free to email Jasleen Oberoi (jasleen@maxonic.com) or call 408-739-4900 x 106.  Key Words:  Android, Mobile.', 53, 57, 11, 0, 2, '2022-09-25 00:00:00', 326291),
(34, '4709317 Project Planner/Scheduler', 'Description:Monitor and update integrated project plans and schedules so that projects can be executed in the most efficient manner possible.Prepare baseline schedules and schedule basis documents for approval by project teams.Assess impacts to the critical path and near-critical activities and report to the project team.Monitor schedule deviations and variances and assist in the developing alternate methods for corrective action.Prepare and provide schedule progress reports, trending charts and schedule analysis on a periodic basis.Maintain record of scope changes, trends and variances that potentially affect schedule performance.Assure credibility of the information contained in the schedule.Review schedules with project team members on a regular basis to ensure that accurate and timely data is incorporated in the schedule.Analyze schedules from A/E firms, Vendors and General Contractors.Verify schedule integrity and evaluate logic and float paths.Evaluate activity sequences for constructability.Make recommendations to manage float and (re)sequence activities (if required) to achieve project milestone dates and interim target completion dates.Analyze change orders for schedule impacts.Resource load schedules as required by the project team.Perform jobsite walks to verify physical progress of scheduled activities.Facilitate project scheduling meetings and/or interactive planning meetings as required by the project team.Participate in project meetings at the discretion of the project manager.Participate in departmental staff meetings.Comply with departmental scheduling practices and procedures.At the completion of the project, develop and record the project\'s historical schedule information and \"lessons learned\" for future use. Skills:Minimum 10 years of experience as a planner/scheduler on facilities capital projects, including design and construction phases.Demonstrated expertise in the use of modern planning and scheduling principles, methodologies, techniques and tools.Proficiency using Primavera Version 6 and Microsoft Project Standard 2003.Pharmaceutical/Biotech project experience, including commissioning and validation activities, is preferred.Experience with planning controls systems, Automation, GAMP, Emerson & Delta V would be a plus. Education:10 yrs or similar Certification by AACE or PMI in planning/scheduling is preferred.', 27, 35, 3, 0, 17, '2022-12-07 00:00:00', 471540),
(35, 'Business Systems Analyst', 'VanderHouwen has more jobs you may like! Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetworkJoining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.  SummaryOur client is looking for a Business Systems Analyst who is Comfortable working in an ambiguous, complex environment with various teams and groups.Qualifications Background in creation of Internal Software desired, as opposed to .com business.Working knowledge of 3D principles preferred.Design Tool experience (AI, Maya, Browzwear, etc.) preferred.', 40, 38, 25, 0, 16, '2022-08-22 00:00:00', 757985),
(36, 'Lead Java Engineer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryAssists supervisor with leadership and coordination of a team designing, implementing, documenting, and maintaining Java web applications. Works with BSA team to obtain requirements, prioritize, and plan the delivery of solutions. Provides guidance and coordination of technical implementations that adhere to enterprise system architecture, design, and implementation standards. Coordinates with other units to identify and schedule delivery of cross-team dependencies. Determines resource requirements and allocations. Assigns tasks to the team members, monitors the alignment with the overall project goals and reports on progress to various levels of management.Responsibilities Works with business representatives, clients, business partners, project managers, and team members to define requirements for applications targeted for the corporate internet/ intranet.Works with project managers, supervisors, and team members to determine work tasks and allocate resources.Leads the development team through solution design, implementation, and deployment in coordination with other IT and business departments.Identifies and resolves design and implementation issues and conflicts.Leads and coordinates the maintenance and enhancement of Internet/Intranet applications. Provides technical support to application administrators and staff.Provides development and production support status updates to management.Develops business relationships with clients and business partners. Strong understanding of client business processes needed.Resolves issues that arise with vendor technical support.Performs other duties as assigned.Qualifications Bachelor degree or equivalent specializing in Computer Science, Math, Business, and/or Engineering.Extensive understanding of web technologies and programming languages. Ability to keep current with emerging internet technologies.5+ years computer programming experience in Java and Java EE. Experience with JSF, Spring, Struts, and Hibernate preferred.Solid background in client/server programming and relational database systems.Outstanding analytical, problem solving, organizational, and detail orientation skills.Strong ability to negotiate, prioritize, determine tasks and allocate resources.Ability to work well under pressure, work with frequent interruptions, and shifting priorities.Maintain confidentiality and project a professional business image.', 43, 60, 12, 0, 23, '2022-11-04 00:00:00', 368283),
(37, 'Project Coordinator II', 'Genesis10 is seeking MxU Construction Coordinators in Chicago, IL! As an MxU Construction Coordinator, you are responsible for providing technical solutions and managing relationships with the client\'s MDU product team. Your role is key in moving our clients MDU (multi-dwelling unit) projects from sales throughout completion of construction. You will have a demonstrated passion for account management with an entrepreneurial spirit and passion for client management, eventually managing a small team of temps across Fiber cities in your region. Our clients projects, like their users, span the globe and require managers to keep the big picture in focus. As an MxU CC, you lead complex, multi-disciplinary projects. You plan requirements with internal customers and usher projects through the entire project lifecycle. This includes managing project schedules, identifying risks and clearly communicating goals to project stakeholders. Your projects often span offices, time zones and hemispheres, and it\'s your job to keep all the players coordinated on the project\'s progress and deadlines. Responsibilities Manage Salesforce construction project tickets end to end and ensure all SLA\'s are being met Attend staff meetings and assist Fiber sales with engineering & construction questions as requested by Fiber sales or engineering teams Work with partners closely on the end to end process from site selection to installation including contracts, escalations, scheduling, etc. Work closely with cross-functional teams:   construction, legal, product, PR, management team, etc. Partner with the local construction team to provide weekly metrics and updates for each city in your region Own and manage projects with multiple stakeholders, both ongoing and ad hoc basis. Track progress of multiple sites and keep team\'s progress updated Minimum Qualifications 3-5 years of industry or sales/account management experience working with clients and setting expectations appropriately with strong customer satisfaction scores. Ability to work cross- functionally with Sales & MDU operations, as well as our local sales teams, engineering, marketing, and field management to ensure our client SLA\'s are explained and executed on time BA/BS degree Project/program management experience; deadline and detail-oriented (PMP preferred) Experience in measuring and improving productivity, and scaling initiatives Preferred Qualifications Proficiency in using Salesforce strongly preferred Understanding of MDU process flow from contract to construction completion. Comfortable with database management & MDU design An understanding of MDU engineering & construction, such as various industry design standards, and construction methods in both condo & tenant MDU environments Flexible (ability to work across different time zones) and able to think quickly Experience training and mentoring junior colleagues If you have the described qualifications and are interested in this exciting opportunity, please apply! About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing telecommunications or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 25, 16, 4, 1, 8, '2022-06-17 00:00:00', 706169);
INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(38, 'Core Java Developer with distributed computing', 'Hi,Established in 1998, eTouch Systems is a technology services company that specializes in Digital Web Engineering. We deliver technology services and accelerate growth for Global 1000 companies by solving complex business challenges with breakthrough technical innovations. We partner with leading global hi-tech enterprises to service their business and technology needs. currently working with our direct clients including VMware, Intuit, Cisco, Yahoo, Sony, Google, PG&E & Kaiser amongst others enabling the success of their Software as well as IT infrastructure development initiatives through the quality of our consultants.Role: Core Java Developer with distributed computing Location: Mountain view, CA Duration: 12+ Months We are a team with the vision to change the way our customers interact with our products to discover contextual relevant content. With millions of customers using our software you will be part of cutting edge team that is responsible for building highly scalable and distributed search system at scale that renders contextual relevant contents. You will be working with recognized experts, Data Scientist, Data Engineers, Solution Architects in the field to deliver On-Tap Unified Search as a Service & best in class search user experiences for web & mobile. Required Skills:Need a strong core Java Developer with some good Data experience. Must have experience with distributed computing.Good working knowledge on Vector Model Search and AWS. Please feel free to send your questions on my way at gnagaraju@etouch.net/ 510 585 1527 Š, if you would like to learn more of this need. Thank you. Best regards,Raju | eTouch Systems | Desk phone: +1.510.795.4800 X 159 Cell phone: +1.510.585.1527| Email: gnagaraju@etouch.net | Fax: +1.510.795.4803 | URL: www.etouch.net  Linked In:  http://www.linkedin.com/in/graju/ Custom Development Solutions| Integration & Support Services| Professional Services6627 Dumbarton Circle | Fremont, CA 94555', 42, 78, 14, 0, 13, '2022-08-28 00:00:00', 227059),
(39, 'Software Developer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.Summary The ideal candidate is a clever, motivated and versatile coder with a hacker mentality who is eager to tackle complex problems. The candidate must be comfortable working in an agile development environment with high expectations for rapid delivery of prototypes, changing requirements, and direct feedback from the internal business customer.  Candidates should be able to learn fast and learn on the fly in order to work with a variety of languages, and be capable of taking responsibility for delivering code that accomplishes defined objectives.  Qualifications Required .NET and C# (Minimum 2 years* experience)Full development lifecycle experience including analysis, design, implementation, testing, monitoringSQL Server: Data modelling, T-SQL, Stored procs, Performance TuningBS or higher degree in Computer Science or related technical field. Qualifications Preferred Microsoft Azure or other cloud technologies Cosmos or other big data technologiesWeb API/UI development', 41, 76, 22, 0, 5, '2022-06-30 00:00:00', 754407),
(40, 'Mobile Automation Tester , Rate :Open Negotiable, 1 year', 'Centizen Inc, Global agile IT solutions and consulting firm focused in delivering scalable? solutions to address complex business problems. We provide above market salaries and benefits so that we have a lower turnover rate. Please visit our website to see all our open positions(20+) in PM, QA, BSA, SAP, Analytics, Java developers etc. http://careers.centizen.com/Mobile Automation Tester:453753SRate : Open Negotiable for the right candidateDuration: 1 yearLocation: Beaverton, ORResponsibilities:Manual and automated testing of mobile applications (iOS and Android).Manual and automated testing of Sports CE (Consumer Electronics) devices.Manual and automated testing of Mac and PC applications.Manual and automated testing of websites.Requirements:4 years of professional experience in quality engineering, IT or related area3 years hands-on experience testing desktop applications, consumer electronics devices, and websitesInterest in testing sports and fitness applications and devicesExperience authoring comprehensive test plans and test scriptsExcellent verbal and written communication and collaboration skills to effectively communicate with both business and technical teamsComfortable working in a fast-paced, results-oriented environmentTo Apply:We offer immediate H1B transfer. Immediate Green Card processing with PERM for the right candidates.Please send us your resume, Visa Status, Availability and bill rate to sdet@centizen.comPlease follow us on:Open Positions-http://www.careers.centizen.com/Facebook -https://www.facebook.com/CentizenLinkedIn -http://www.linkedin.com/company/centizenTwitter -http://twitter.com/centizenincWe are always looking to network, so if you are in the market or just interested in hearing about future opportunities, please send us a current resume along with your hourly compensation requirements. If you would like to add to our linked in professional network, here is our linked in profile http:// www.linkedin.com/in/leemaWhy Centizen is the right IT solutions and consulting services company to work with:-There are many advantages for IT professionals like yourself to work with Centizen.  These include:We enjoy approved IT vendor status with several leading companies in the Pacific Northwest and are focused on growing our list of  approved vendor status with several additional companies.    We are an ethical company with high integrity and a dedication to delivering high results with our clients.    We are fair and honest in all of our business dealings with our consultants and clients    We pay top scale hourly rates based on your credentials, experience and market demand    We can offer related benefits as needed and customized to your situation    We can work with you to help you achieve your career growth and goals', 34, 2, 15, 0, 11, '2022-07-04 00:00:00', 720741),
(41, 'Project Manager : Information Security and Risk Management', 'Project Manager Contract postition located in downton San Francisco.  Sorry no H1B sponsorship available on this one.      Local and candidates willing to relocate are encouraged to apply.   A background in Banking, Wealth Management, Financial Services is a HUGE PLUS.   Any exposure to INFO SEC is a plus.  Any background in Operations Management is a huge plus.      Please email resume to Ellen at elerner@csi-it.com attached as a Word Doc.    Please include rate info.  You must have GOOD CREDIT in order to qualify for this role. Key Skills, Knowledge and Abilities:ˇ The Project Manager (with some business analysis skills) who is well-versed in Banking, Wealth Managemennt, Financial Services, Regulated environments. security architecture and controls; familiar with current and emerging threats; able to develop risk mitigation strategies required to protect the confidentiality, integrity and availability of information systems and client data; proficient at working with senior management, internal business units and vendors to resolve risk issues and to develop efficient and effective action plans; familiar with the laws, regulations, industry standards and guidance pertaining to information security; experienced in the oversight of multiple, complex projects; and able to effectively manage a team of risk analysts. Must have excellent verbal and written communication skill, the ability to understand business requirements and skill in interacting with and influencing senior management.ˇ Requires a four-year college degree with emphasis in a computer related field or the equivalent skills, knowledge and mental development.ˇ Requires a minimum of ten years in Project Managemebt and a background in Information Security and Risk Management with prior experience in a security management leadership position managing a security and governance program is a huge plus.  .ˇ Requires hands-on experience with security management products.ˇ CISSP and CISM/CISA certifications preferred.ˇ Requires working knowledge of IP routing and networks, encryption, firewalls, intrusion detection systems, VPNs, UNIX, Linux, and Windows operating systems and identification, authentication and authorization systems and accounting policies.ˇ Must possess excellent written and oral communications skills and the ability to problem-solve technical issues.ˇ Requires the application of compliance and risk management efforts within a highly regulated environment.ˇ Must be able to clearly define and present ideas, and effectively communicate with all levels of management.ˇ Requires the flexibility to act in both a strategic management role as well in a technical leader capacity when required.ˇ Requires proficiency with varied types of computer hardware and software and with varied computer and network operating systems.ˇ Must possess a general knowledge of all bank operations.ˇ Must exercise a reasonable amount of independent judgment under a minimum of supervision.ˇ Requires strong interpersonal and organizational skills, including the ability to meet deadlines.ˇ Requires analytical abilities to weigh each identified security risk against the expense of enforcing and monitoring its mitigating security control.ˇ Requires the ability to lead a strong team and achieve results in a challenging environment.ˇ Team playerˇ Provides extraordinary serviceBasic Skills and Experience Required: ˇ Effectively manage a team of risk analystsˇ Excellent verbal and written communication skills and the ability to problem-solve technical issuesˇ Requires a four-year college degree with emphasis in a computer related field or the equivalent skills, knowledge and mental developmentRequires hands-on experience or at least familiarity with security management productsPossess a general knowledge of all BANKING operations.CISSP and CISM/CISA certifications preferredˇ Requires working knowledge of IP routing and networks, encryption, firewalls, intrusion detection systems, VPNs, UNIX, Linux, and Windows operating systems and identification, authentication and authorization systems and accounting policiesˇ Well versed in security architecture and controlsˇ Familiar with current and emerging threatsˇ Able to develop risk mitigation strategies required to protect the confidentiality, integrity and availability of information systems and client dataˇ Familiar with laws, regulations, industry standards and guidance pertaining to information securityˇ Experience in the oversight of multiple, complex projectsˇ Ability to understand business requirements and skill in interacting with and influencing senior management.', 13, 74, 8, 0, 15, '2022-06-26 00:00:00', 470889),
(42, 'Informatica Admin', 'Administering the Informatica environmentApply patches / upgrades / hotfixes for Informatica Power CenterMonitor performance, troubleshoot, and tune ETL processesWill be responsible for 24x7 supportWork with Informatica vendor on any issues that ariseSupport the Informatica developer team as neededExperience and SkillsMust have demonstrated experience in Informatica suite of productsSeveral years experience in building/implementing scalable, reliable and high performance ETL architecturesProficiency with RDBMS systems, SQL, Oracle PL/SQL, UNIX shell scripting, and database optimizations  I kindly request to apply resumes with genuine experience only Project start date is in second week of JulyKindly send your resumes to yag{dot}rao{at}mygoconsulting{dot}com..You can reach me on Three*Three*One---Four*Two*Five---Seven*Seven*Zero*Five Regards,Yagneshwar Rao yag.rao@mygoconsulting.comOffice: 331-425-7705', 29, 15, 23, 0, 1, '2022-09-12 00:00:00', 478014),
(43, 'Software Development Engineer, Big Data', 'Do you want to help build a highly personalized homepage that greets each of our millions of customers worldwide every time they visit Amazon.com? Are you interested in building data pipelines that process petabytes of customer behavior data?Amazons Homepage Personalization team develops and supports personalization and recommendations for Amazon customers across music, books, movies, fashion, and everything else that Amazon offers. We analyze petabytes of implicit and explicit feedback data on our hundreds of millions of customers and billions of products in order to guide the development of a meaningful and highly personalized homepage experience.We are looking for an experienced and forward thinking software engineer with a focus on data engineering to join our team. This person will work closely with other software engineers and machine learning scientists to design and implement predictive, scalable models for everything from product recommendations to personalized mobile content layouts. You will work directly with machine learning scientists to scale up collaborative filtering models on retail purchases, Prime Video views, Prime Music streams, and other Amazon data to deeply understand our customers.This is one of the foremost roles in data engineering with the opportunity to reach millions of customers on one of the highest traffic consumer websites in the world. If you are passionate about data engineering, software engineering and personalization at scale then we encourage you to apply.- BS or MS degree in computer science or related field.- Strong coding experience, preferably with Scala, Python, Java, or C++.- Strong grasp of data structures and algorithms.- Ability to explain complex issues in technical and non-technical terms.- Cares deeply about agile software practices, data driven development, and collaborating with other engineers and researchers.- Working knowledge of Hadoop, Spark, Redshift, DynamoDB, Kinesis, or other big data technologies.- Experience with supervised and unsupervised machine learning models.- Experience with collaborative filtering and recommender systems.- Experience running and evaluating AB Tests.', 49, 20, 13, 0, 7, '2022-11-10 00:00:00', 767139),
(44, 'Sr. Business Data Analyst', 'Genesis10 is seeking a Sr. Business Data Analyst for a 6-month contract position with a client in Eagan, MN. Genesis10 provides access to career opportunities with over 40 clients in the Twin Cities. As the #3 ranked firm for Business and IT consulting in Minnesota, we offer a variety of opportunities whether you are looking for contract, contract-to-hire, or permanent positions. Let\'s connect today! Responsibilities:   * Data gathering and analysis as part of assigned tasks and projects * Creating data visualization as part of assigned tasks and projects * Assist Editorial Service teams with market analysis and related requests * Assist in Market Analysis, Jurisdictional build and retention model projects * Assist in development and implementation of Strategy Insights Framework in the areas of data analysis, KPI development and reporting * Interact with partner teams to manage tasks and projects * Other projects and tasks as assigned Qualifications:   * Bachelor\'s degree * BS in statistics, math or data science related field of study preferred * Experience in a Business Analyst or related role involving data analysis * Strong Excel skills including charting, Pivot tables, statistical and data cleanup functions * Basic PowerPoint, Word, Outlook skills * Fundamental statistical, data analysis and visualization skills * Strong communication skills * Ability to build effective working relationships with members of team and partner organizations * Good written and oral communications skills able to converse with many levels of the organization * Able to work with product, editorial, data and marketing teams (including segment partners) in a collaborative manner to achieve positive results * Strong team player who understands consensus and works toward the success of the team and organization * Ability to present ideas in a clear and concise manner * Able to work with little direct supervision * Able to work effectively in a team environment where team members may not be co-located * Self-motivated and pro-active * Good analytical and process improvement skills * Understands expectations that were set with team and recognizes when issues / events may affect delivery Preferred Qualifications:   * Ability to create SQL or MS Access queries and reports * Experience using Tableau or similar data visualization tools * Statistical modelling background a plus If you have the described qualifications and are interested in this exciting opportunity, apply today! Benefits of Working with Genesis10:   As a Genesis10 consultant, we are proud to offer access to the following benefits: * Medical and dental insurance * Bi-weekly payroll * 401k plan * Downtown Minneapolis/St. Paul parking allowance * Delivery Manager for employee support * Successful re-marketing program * Referral program with the opportunity to earn additional income About Genesis10:   Genesis10 is a Professional Technology Services Firm providing Staffing, Workforce Optimization and Domestic Outsourcing Solutions. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 18, 30, 9, 0, 10, '2022-11-29 00:00:00', 562070),
(45, 'Clinical Site Monitor', 'CLINICAL SITE MONITOR REQUIREMENT #16-00755RECRUITER: ANNIE DOYLEJOB LOCATION: LOS ANGELES, CAMAY 12, 2016 *** CANDIDATES MUST BE ABLE TO WORK ON OUR PAYROLL AS A W-2 ****** WE WILL SPONSOR H1-B VISA\'S *** Project Description:Position located in Los Angeles, CA area and will manage sites in this area and help region cover Northern and Southern California as needed. Perform/facilitate time-efficient pre-study initiation process. Orient site personnel to study protocol/procedures. Monitor compliance to FDA Regulations and BMS SOP. Manage study site activities through frequent on-site visits and telephone contracts Required Skills: On-site monitoring experience required of multiple protocols in multiple therapeutic areas, including oncology. This 6+ month position starts ASAP. Please E-MAIL your resume (attachment to email) with rate and availability to Annie: annie@alphaconsulting.com', 35, 46, 17, 1, 21, '2022-11-06 00:00:00', 346186),
(46, 'Product QA Engineer', 'Job Summary: The person in this position provides the quality-assurance support to customers, service teams, assigned production operations and programs to ensure that the product is built in accordance with customer and division quality requirements while maintaining production flow.Essential Job Functions: Provides Customer Quality interface and expertise to proactively assure requirements are understood and satisfied Investigates, contains and eliminates causes of customer quality problems and manage completion of corrective actions requests Analyzes organizational customer quality metrics and performs periodic reviews to evaluate results and recommendation action plans to close gaps in the supply chain Develops and analyzes statistical data and product/process performance to recommend and implement improvements in targeted areas Supports Supply Chain Management organization relative to the collection and analysis of customer quality data providing expertise to assists service management teams and customers with product and process quality requirements Reviews sales orders and associated bills of materials to ensure that customer order requirements are clearly specified and planned for, prior to release for production build Qualifications: Bachelors Degree preferably BSEE or BSME, or equivalent experience. 5 yrs experience with Product Quality Assurance Minimum of 5 years* experience in Quality Assurance Casino/Gaming experience preferredKnowledge, Skills, & Abilities: Understanding of problem solving methods, i.e. 8D and the associated statistical tools used to analyze problems, evaluate and complete improvement projects Knowledge of Lean Manufacturing and Process Variation Reduction (Six Sigma) concepts and tool sets as they relate to process/product variability, and root cause and corrective action determination Proficient understanding and interpreting engineering specifications, mechanical drawings, and/or electrical schematic Demonstrated ability to lead/coordinate projects with cross-functional teams Knowledge of inspection methods in the design, fabrications, and production of electronic equipment Familiar with recognized Quality Assurance Standards AS9100, ISO 9001, AS9102', 15, 30, 20, 0, 19, '2022-11-28 00:00:00', 399129),
(47, 'System Support Administrator', 'System Support AdministratorSeeking a part-time System Support Administrator to assist in supporting our offices across the Las Vegas valley.Key Responsibilities: Perform hands-on fixes remotely or in person, including installing and upgrading software, installing hardware, implementing file backups, and configuring systems and applications. Loading computer equipment with software, access software updates, drivers, knowledge bases Perform preventative maintenance, maintain, implement, and ensure functionality of technology and other IT equipment. Install and trouble shoot surveillance camera systems Evaluate documented resolutions and analyze trends for ways to prevent future problems. Alert management to emerging trends in incidents. Assist with other duties as assignedQualifications: High School diploma required. Some college preferred. Previous work experience with a customer service focus. Experience in computer hardware and related internet hook up. Proficiency in computer software programs including Microsoft Office suite. Reliability is a must along with effective interpersonal skills to work with all levels of personnel. Experience with touch screen interactive systems', 33, 11, 19, 0, 12, '2022-07-24 00:00:00', 639414),
(48, 'Java Developer (Ecommerce)', 'Job Req #: 16-03602 Job Description:  Java Lead with eCommerce development experience - Key Responsibilities and Qualifications: Looking for two-to-three Senior Java Developers with experience in eCommerce. Strong Java, Spring Framework and Hibernate ORM.  The ideal candidate will have experience building their own e-commerce product or working with an existing ecommerce site.  Looking for typical eCommerce experience such as PIM, PCI, shopping carts, payment gateways, catalogs, etc.  Any experience with BroadLeaf, ElasticPath or KonaKart is a plus.   My client will train on the eCommerce tools.  Location:  Miami, FLPosition Type: ContractDiane DouglasSenior IT Recruiter/Account LeadAscent303-694-5493 **If this is not a fit for you or you are not interested, Ascent Services Group offers an excellent Referral Bonus!  We look forward to hearing from you! About Ascent:The Ascent Services Group (ASG) is a nationally recognized technology staffing and consulting firm whose fundamental business is providing staffing services to Small, Medium, and Large Enterprise clients in our core market verticals: Financial Services, Healthcare, Technology and Life Sciences.  As consultants for ASG, you will have access to many of the top clients within the industries we serve.  Our goal is to deliver innovative talent through proven best practices and effective resource optimization.  Become one of ASGs candidates and experience the difference!IND05', 52, 52, 6, 0, 20, '2022-10-16 00:00:00', 271180),
(49, 'Geolocation Engineer', 'Clearance: Must be eligible to obtain a top secret clearance. We seek highly qualified, self-starting individuals to develop, implement, and test geolocation systems. This engineer will apply mathematics and physics to design and develop complex positioning systems for RF signals in demanding collection environments. In this role, the selected individual will be responsible for geolocation algorithm development, system engineering, and software implementation and testing. Experience with an existing geolocation approach/engine in a classified application/environment is a definite plus.Work includes system support through all phases of the life cycle from concept through final delivery, using an iterative design methodology to maximize productivity. Solutions are implemented on virtualized platforms. You will have access to a well-equipped computer / signal processing lab with emphasis on real data rather than simulation.Required:BS (MS or PhD preferred) in Electrical Engineering (preferred), Applied Math, Remote Sensing, or similar disciplineDemonstrated capability in scientific programming, especially C/C++Relocation to sunny Tucson, Arizona; Denver, Colorado is a potential alternativePossess (or ability to obtain) and maintain an SCI security clearance (US citizenship required)Preferred: Experience with an existing geolocation approach/observable processor in a classified application/environmentStrong DSP fundamentalsApplicable background includes GPS or other navigation systems; geolocation observable processing of TDOA only and TDOA/TDOA-dot (FDOA) measurements; electromagnetic propagation; multipath and interference mitigation; and mathematical techniques such as non-linear optimization and unbiased correlation.', 30, 2, 16, 0, 6, '2022-09-27 00:00:00', 546908),
(50, 'Director of Product Development', 'Clearance: Active Secret required with strong preference for person with an in-scope TS/SBBI.Position OverviewBuild your career at a technology-driven company dedicated to Solving Great Challenges. We engineer ground-breaking technologies in the areas of communications, safety, feeding the world, energy independence, and resource preservation. Grounded in a common sense approach to an ever-changing world, we are powered by the people who boldly mix drive, courage, integrity, and innovation into the focused ability to solve great challenges. Our strength as a company has always been our desire and drive to Solve Great Challenges, and our culture is built on collaboration, creative thinking, and problem solving.The Director of Product Development will be responsible for planning, managing and directing all product activities, to meet customer needs and fit within the capabilities of the division.  Achieve financial and investment return goals, growth forecast, and operational metrics.  The position will have primary responsibility for the execution of the strategic plan defined by the business development team.Execution of this plan will involve coordinating the efforts of the software, hardware and algorithm teams across product development efforts that span both radar as well as stratospheric solutions. Our radar products specialize in sophisticated radar processing to provide a highly sensitive, yet low false alarm rate tracking picture. These products are capable of land, maritime, and air tracking and can be deployed on towers, aerostats, vessels, and UAVs. We are actively developing new sensors as well as exploring new platforms on which to deploy these sensors. The engineering team responsible for radar and stratospheric product development and support is comprised of approximately 20 and can vary in size as the organization scales. Team members are geographically diverse with the largest concentration in Arlington VA Essential Functions Develop and execute budgets, short-term plans, and long-term plans, policies, procedures, and initiatives. Work with leadership team to maintain accountability to budgets, plans, and initiatives.  Maintain close surveillance over product development and support activities to assure proper allocation of resources and  achieve deadlines.  Assist with the evaluation and selection of new raw materials and vendors. Serve as a liaison and mentor to assist with and expedite product related issues. Monitor and initiate improvement projects to current processes or policies. May be involved in the specification and selection of new manufacturing equipment. Coordinate and/or direct major projects. Work with leadership staff to develop and monitor metrics relevant to division business model. Delegate appropriate responsibilities and assignments to team members. Keep informed of new developments in the economy or marketplace that are relative to the success of the division. Either directly or through team, assure staffing requirements are met. Encourage team member growth and development. Demonstrates the Dimensions of Competition and Team Member Values in their daily actions and encourages their teams to do the same. Administer annual team member performance reviews, goal setting, and salary planning. Maintain records on direct reports in relation to attendance and performance. May be called upon to perform comparable duties of a similar or related nature and/or assist in other areas as needed. Learning, understanding, continuously improving, and promoting the divisions quality management system in accordance with ISO standards. Education/Experience Bachelors degree in business or technical field. Minimum 8 years related experience; or equivalent combination of education and experience. Knowledge/skills/abilities Thorough knowledge of product development and procedures, including knowledge of general accounting. Ability to manage a diverse range of technical operations. Experience managing budgets and increasing efficiencies. Knowledge of TQM, Six Sigma, or Kaizen principles is preferred. Demonstrated leadership, analytical, and decision-making skills. High level of patience and service. Ability to motivate team members. Ability to be flexible and multitask. Creativity and problem solving skills. Computer proficiency, including Microsoft Word, Excel, and Outlook. Ability to communicate effectively with team members and leadership staff. Annual Motor Vehicle Record (MVR) check required.', 8, 21, 21, 0, 9, '2022-12-28 00:00:00', 736074),
(51, 'Business Intelligence Development Manager', '*         3+ years of Information Technology (IT) Management experience.*         5+ years of Data Warehouse Development experience including experience with the Microsoft BI Platform.   *         Expert knowledge and Experience with Data Modeling including Relational Data, OLAP (Cube) design, Reporting and Dashboard Design.*         Expert knowledge with SQL Server 2012 or later and SQL syntax.  Experience using Microsoft Business Intelligence technologies:  SSAS, SSIS, SSRS or similar technologies.*         Expert knowledge with OLAP (SSAS, Cubes) and MDX query syntax.   Knowledge of DAX a plus.*         Directs, manages, and coordinates the services and activities of the Business Intelligence (BI) Development team assigned to the BIDM.*         Ensure that the morale, productivity, training, quality of work and discipline of the staff assigned to the BIDM is at an effective level.*         Manage resources and projects to ensure that the goals and needs of the business are met.*         Supervise and approve all design work and ensure that it is well documented.*         Supervise and perform quality control functions as it relates to development work to ensure that the work product meets and exceeds established business standards and practices.*         Experience with Software Development Life Cycle (SDLC)*         Experience with Source Code management and control and Change Management.*         Keen interest in understanding business issues through detailed information analysis and the ability to analyze data in terms of it*s business meaning.*         Ability to review and troubleshoot ETL Code, produce sound Database and Cube Design, and analyze Data for content and quality', 46, 16, 18, 0, 19, '2022-11-25 00:00:00', 720222),
(52, 'Senior. NET Developer (Temp-to-Perm)', 'Company Overview: Creating value by bringing together the right people to achieve results is our motto. Our clients and employees say they choose to work with us because of how we work with them - with service that exceeds their expectations and a personal commitment to their success. Our client, one of worlds largest manufacturers of medium & heavy-duty Trucks and Diesel engines, seeks an accomplished Senior .NET Developer. ***************************************************************************************************************************Candidate must be able to work without requiring sponsorship and should be open to FTE conversion***Description:The Senior .NET Developer will be responsible for implementing innovative web and console applications.Perform design, coding, testing, implementation, and documentation of solutions. Requirements:Candidates MUST have 7 solid years of relevant experience with prior long-term contracts/employment.BS in Computer Science or 7 years experience..NET 4.5x development, MCSE preferredTFS (source code management), Web services including WCF, JQuery, AJAX, JavaScript, VB, VB Script, XML/XSL; Cascading Style Sheets (CSS), Architectural design patterns.Sitecore experience preferred.Experience with at least one of the following databases: DB2 (v8.0 or greater), DB2 query, and DB2 Connect, Oracle, SQL Server.Ability to translate functional designs into technical designs, and conversely to translate complex information into common terms.Must be a strong technical leader who can prioritize well and has the ability to work in environments with competing and alternating priorities, with a constant focus on delivery.Strong analytical and problem solving skills.Excellent written and verbal communication skills.Accountable for partnering with key roles (enterprise architects, infrastructure, etc.) to create solutions that are aligned to architecture standards and principles, leverage common solutions and services.Experience working in a fast paced and demanding work environment. ************************************************************************************************************************ I\'d love to talk to you if you think this position is right up your alley. If you\'re looking for rewarding employment and a company that puts its employees first, we\'d like to work with you. We\'re driven, people driven. We also offer group health Insurance (employee paid on a pre-tax basis).Satwinder SinghLead Technical RecruiterTel: 925-297-6495Email: ssingh@ameritconsulting.com  NOTE: Candidates that are offered a position are required to pass pre-employment drug and background screening', 19, 62, 2, 0, 12, '2022-07-14 00:00:00', 560103),
(53, 'Frontend/UI Developer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. Their Consulting Services Team is seeking to add those with engineering knowledge / experience with the latest web and mobile technologies and come work as a Frontend/UI Developer. The Consulting Services team works with a variety of customers to deliver world class IP-based video delivery solutions. Current projects include multiple initiatives for major media companies, as well as cable operators and telecommunication companies worldwide.  The Frontend/UI Developer will be contributing to HTML5 video sites for high profile media companies, as well as to administrative consoles for media publishers and distributors using the latest JavaScript technologies. ResponsibilitiesDesign, estimate, and implement features for consumer-facing HTML5 video players based on client PDK technologies. Develop administrative user interfaces for Consulting Services customers for video management solutions.Collaborate with Project Managers and Solution Architects to plan and estimate customer solutions.Participate in a highly iterative agile development process as part of small cross-functional engineering team.Help the team diagnose and address complex client-side interactions.Qualifications BS Degree in Computer Science or a related field (BONUS).High level of communication skills. 4+ years* experience with front end JavaScript Development.CSS and HTML design implementation from wire frame to reality.Comfortable with a wide range of JavaScript technologies like Angular.JS, React, Node.js, JavaScript promises.Experience in a test-driven development environment.Team Lead experience (BONUS).', 37, 8, 24, 0, 20, '2022-09-08 00:00:00', 324899),
(54, 'Domestic Outsourcing Business Development Executive', 'Genesis10 has an incredible opportunity for a Business Development Executive to join our highly-successful Domestic Outsourcing Service Line. The Business Development Executive will be responsible, on a national-level, for acquiring new client logos through consultative-selling of the full spectrum of Genesis10\'s Domestic Outsourcing services. Genesis10\'s core competencies in Domestic Outsourcing include, but is not limited to Infrastructure, Application Development, and Managed Services. Today, Genesis10 has 6 certified Delivery Centers from which we provide services from today to the Fortune 500. The Delivery Centers are located in: Atlanta, Cleveland, Dallas, Detroit, Kansas City, and Orlando. Becoming a Genesis10 Domestic Outsourcing Business Development Executive is an excellent career move. Here is what your sales colleagues like most about being in sales at Genesis10: * Genesis10 will not cap your earnings and will do everything we can to empower you to exceed your compensation goals. Many of our sales team members are some of the highest paid in the industry! * Genesis10 has a proven track record with referenceable clients providing Domestic Outsourcing Solutions and is considered an early-adopter * Genesis10\'s Delivery Center Network if 6 locations in Tier 2, 3 and 4 cities across the United States has been recognized by the market analysts as a key differentiator * You are not on your own! Get the support you need to drive your success: + Executive Level Support: You will have direct-access to the entire Genesis10 C-suite to assist you in opening up doors, creating sales strategy, and closing deals + Dedicated Marketing Team: You will have a marketing team focused on ensuring that you have the sales collateral required to support the business development lifecycle from sales presentations, to whitepapers to reusable RFP content * Genesis10 is not a job; it is a family and a career where you can enjoy sustained success. Most of our sales organization has been at Genesis10 for 7-15+ years * Experience work/life balance and trust from your organization. We realize that sales is a difficult role, requiring a lot of hard work and travel at times. Genesis10 is an organization that recognizes success is predicated on being in balance and enjoying the fruits of your labor How You Will Make a Difference:   As a Senior Business Development Executive, with experience selling outsourcing solutions, you will help drive domestic outsourcing business to Genesis10. * Utilizing existing relationships to drive Domestic Outsourcing business to Genesis10 * Using your \'hunter\' sales approach, with the support of a top-tier delivery team, to open up new relationships and establish an optimal sales pipeline * Manage the end-to-end sales process for all pursuits, including lead-generation, client communications, on-site presentations, proposal development, and negotiation * Build strong internal relationships with Genesis10s\' C-level executive team and the domestic outsourcing delivery team to gain optimal sales-support * Effectively collaborate with Genesis10\'s Delivery Center Operations Team to ensure that all awarded service proposals fully meet the client\'s needs Qualification Requirements:   * Multiple years of proven success selling global offshore or domestic/onshore solutions * Established network of Directors, Vice Presidents, and C-Level relationships to help drive business * Tenured history, having worked multiple years for a recent employer * Demonstrated ability to apply a sales \"hunter approach to driving new business * Experience overseeing the buildout of proposals and contributing to the RFP process * Expert understanding of client outsourcing decision-criteria * Proven ability to work with remote or geographically disperse teams * Ability to travel to client-sites and Genesis10 Delivery Centers for onsite presentations If you\'ve met these qualifications, I want to talk with you. If you are still reading, you must be interested! Reach out to me (Remster Bingham, Vice President of Recruiting rbingham@genesis10.com) today and gain a first-hand understanding of why Genesis10 is a career and not just a job! The Company:   Genesis10 is a professional technology services firm providing staffing, workforce optimization and domestic outsourcing solutions. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We offer benefit options to fit your needs and a support staff that works with you from placement throughout your engagement providing career mentoring and support project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. Genesis10 is an Equal Opportunity Employer, M/F/D/V  Start Date: 07/05/2016', 23, 63, 10, 0, 6, '2022-10-17 00:00:00', 259622),
(55, 'Web Developer', 'Help invent the next generation of ecommerce; integrated experiences that leverage the store, and the web to sell anything, to anyone, anywhere in the worldThe Opportunity: -    Work in a small, high performance agile team environment - sharing innovative ideas and working collaboratively across teams. -       Work with talented engineers and product visionaries to contribute to the vision and design of our web and mobile properties. -       Create front end of interactive websites incorporating HTML5, CSS3, JavaScript, AJAX as well as other Web 2.0 techniques. -       Be a product-oriented Web Developer creating and experimenting with new ideas that will engage and excite our customers.Experience/Skills required: -      Bachelor\'s degree in Computer Science or related technical field. MS/PhDwould be a strong plus. -      3+ years\' experience in HTML5, JavaScript, CSS3, AJAX and general Web 2.0 techniques in the context of interactive Web Applications. -       Strong understanding of responsive design techniques and principles-       A passion for all things JavaScript, UI and Front End-       Must be able to work effectively both on teams as well as be self-motivated, task oriented and organized.-       Strong customer focus and obsession with quality-       Ability to work in a fast-paced and agile development environment', 39, 55, 1, 0, 9, '2022-11-06 00:00:00', 266069),
(56, 'Senior Full Stack Developer', 'Description:   Our client\'s Open Software Frameworks team is building a variety of products used by both independent software vendors and in-house developers. Their diverse portfolio of products includes Application Portal, Geo Spatial Mapping platform and IDE used to build their terminal applications. This team is contributing to a number of cutting-edge open source projects. Based on the breadth of the team\'s work, you will need to be a strong full stack developer. You strive to design, implement and support the ideal solution. Balance between elegant design and system performance and reliability is always at the front of your mind. You will have the opportunity to work closely with users, UX and Product teams. Requirements:   * 3+ years of experience programming in C/C++ * 3+ years of experience with HTML5, CSS and JavaScript * Strong OOD/OOP skills and experience applying modern design patterns * Knowledge of algorithms, standard data structures and multithreading We\'d love to see: * Experience with C#, .Net internals and WPF * Experience developing distributed systems in a Windows or Linux environment * Familiarity with and understanding of an Agile methodology If you have the described qualifications and are interested in this exciting opportunity, please apply! About SWATT:   The Genesis10 Software and Technology Team (SWATT) is a specialized recruiting service focused on helping accomplished software developers, programmers, platform engineers and elite technology professionals find once-in-a-lifetime career opportunities in New York City with the world\'s most advanced technology organizations. Whether local to New York or relocating from across North America, we take an authentic approach to helping people make life-changing technology career decisions. For more information go to http://swatt.genesis10.com/ \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/27/2016', 11, 34, 5, 0, 25, '2022-07-25 00:00:00', 257685);
INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(57, 'Jr Business Analysts', 'Genesis10\'s G10 Associates Program is seeking qualified Business Analysts to join our team! Program Summary:   As a wave of baby boomer retirement looms on the horizon, companies are recognizing a need to develop talent to fill the upcoming gap. This is why companies look to Genesis10 and the G10 Associates Program. Our innovative program mentors and develops the brightest recent graduates, turning them into G10 Associates who are business and technology professionals placed in client engagements with leading organizations in the area. The G10 Associates Program is continuing to grow and is looking for strong candidates with exceptional soft skills. New Business Analyst Consultants are enrolled in our Training Academy which provides our G10 Associates the background they need to succeed at our clients. Along with training and mentorship, we provide a competitive salary, benefits, and direct client exposure that jump starts careers. Position Description:   As a Business Analyst Consultant with Genesis10, you build skills required in all phases of a project - focusing on many industries, methodologies, processes, and technology platforms. From defining business requirements and designing technical solutions, to developing and testing enhancements, Business Analyst Consultants turn ideas into reality. You will collaborate with client and project teams to turn business requirements into detailed design specifications, and then build or enhance systems and business processes to meet their needs. Business Analysts are very comfortable with working in a team environment, and they possess solid communication and documentation skills. Experience/Skills:   * 3-6+ months of corporate work/internship experience * Healthcare experience or knowledge * Strong interpersonal and group communication * Experience working within a project team * Excellent problem solving skills very analytically minded * Understanding of business process improvement * MS Office applications * Bachelor Degree in Management Information Systems, Information Systems, Health Information Management, General Business, Communications, Marketing, Psychology, Economics, Finance or related field Desired Traits:   * Knowledge and understanding of the Software Development Lifecycle * Exposure to Business Applications * Ability to stay focused while performing heads-down work * Self-starting with a strong work ethic * Able to manage time effectively * Excellent team attitude * Professional demeanor * Desire to work in corporate environment and develop consulting skills * Personal accountability If you think you have what it takes to be the next great G10 Associate APPLY NOW! Qualified and interested candidates should apply now for immediate consideration. About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. Genesis10 is an Equal Opportunity Employer, M/F/D/V  Start Date: 06/27/2016', 5, 22, 7, 1, 18, '2022-11-10 00:00:00', 664729),
(58, 'Manager - GFS', 'Global Financial Systems (GFS) is looking for a driven, results-oriented leader to lead teams building the next generation of systems to automate and optimize critical financial processes. Our ideal candidate thrives in a fast-paced environment, relishes working with big data, enjoys the challenge of highly complex business contexts that are typically being defined in real-time. Above all else, the successful candidate will be a passionate builder of talent and teams.In this role you will be responsible for leading a team of functional analysts, engineers, and technical program managers to create world-class finance systems that support Amazon\'s global footprint. You must be willing to insist on the highest standards for quality, maintainability, and performance. The systems we own are responsible for trillions of financial events and payment flows that would rank among the largest countries in the world by GDP. You will ensure that engineering best practices are followed and that software is designed to be highly-available, dynamically scalable, and resilient to continuity threats. You will own the goals and roadmap of the your team, along with the strategic direction of your software and shape of your organization. You will demonstrate strong leadership as you control your own destiny in Amazon\'s ownership oriented culture.Our team operates ERP and custom software platforms that are among the largest in the world by volume and complexity, and a successful candidate will be able to dive deep into either realm to guide technical and functional decisions with their team. As a leader, you will drive architectural and design choices, invent new features, develop distributed services, and build a scalable, service-oriented platform for our people . We have a team culture that encourages innovation and we expect developers and management alike to take a high level of ownership for the product vision, technical architecture and project delivery. Successful candidates will be high-bandwidth leaders who can cut through the noise, simplify relentlessly, deliver results, and build great teams around themselves.  5+ years of technical management experience Track record of building and delivering mission critical, 24x7 production software systems   Deep understanding of engineering best practices Deep understanding of agile project management methodologies Experience writing custom production code Working knowledge of data structures, algorithms, and object oriented design Working knowledge of design patterns Experience with global technology implementation efforts and rollouts Experience working with ERP platforms and integration at scale Experience in the Finance, Accounting or Tax domains. Bachelors degree in Computer Science or equivalent Masters degree in Computer Science or equivalent', 4, 36, 11, 0, 14, '2022-09-26 00:00:00', 724763),
(59, 'Java Full Stack Engineer (Angular JS is must)', 'Required Skills                                   1.      6-9 years of experience in software development.2.      Experience working with MVC based front-end library Angular JS3.      Strong expertise in Java/J2EE, Spring , Hibernate.4.      Experience with SQL/NoSQL databases.5.      Responsible for module design / high architecture.6.      Participate in customer interaction, code review and follow-up.7.      Work closely with the development team to optimize and improve the e-commerce platform to grow subscription business. This involved identifying opportunities , developing requirements and co-ordinating with QA.', 7, 17, 3, 0, 24, '2022-10-01 00:00:00', 205795),
(60, 'Windows Administrator', 'Windowns (SAN, Security) virtual environment, DR, excersise testing, documentation, scription work we need done, and severy server upgrades 08 to 12.  Stong Windows confi experinece is a must.  Want some Project Management experience.  Want some TSM or VIM (backing up virtual env), exp administering virutal servers.Top three things we want this person to have:  1. Windows skills, 2. ability to write documentation 3. will need to wear several hats in this role, small company feel. It\'s a plus to have the networking stuff... cisco.  Only have 1 person doing the networking right now.Experience with the installation, configuration, administration, and support of Windows 2008 / 2012 Server is required. Project management and documentation skills as well as Disaster Recovery / Business Continuity planning and testing experience is preferred. Additional experience with administering virtual servers, scripting, server patching (Shavlik), system monitoring and alert management (SolarWinds), Cisco ASA firewalls and Catalyst switches is desired The ideal candidate will be able to work well in a team environment and learn new technologies quickly.', 51, 2, 25, 1, 3, '2022-12-09 00:00:00', 333788),
(61, 'Software Engineer (Algorithm)', 'Position:   Software Engineer (Algorithm)Duration:  6+ MonthsLocation:  Bridgewater, NJResponsibilities:The candidate is expected to play research and development.Under the supervision of a senior scientist/researcher areas of advanced computer vision/media processing technologyQualifications / Requirements:Ph.D or Master degree in relevant discipline/field, such as EE or CSStrong programming skills in C / C++ for both Windows and LinuxGood programming skills in Java and Python is a plusAmple hands-on experience with OpenCVExperiences with Android programming is also a plus.3+ years algorithm R&D experiences processing, and related fields with proven track recordGood communication skills, both verbal and writtenan active role in computer vision technology or project leader to conduct research / development work in thetechnology.CS is a mustStrong plus in the areas of computer vision, information retrieval, machine learning, media record.End-to-end advantages in telecom network infrastructure, position in the All-IP convergence age.Our products and solutions through communication.  /////*****Any query please call on 408 550 1287****//////', 9, 61, 12, 0, 4, '2022-12-15 00:00:00', 432541),
(62, 'Sr. JavaScript Developer', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.  SummaryOur client is looking for an expert Sr. JavaScript Developer with experience on AWS (Amazon Web Services). Qualifications Required 5+ years\' full-time professional software developer experience. 3+ years* experience on node.js (JavaScript), Expert-level knowledge.2+ years* experience on AWS (EC2, Lambda, ECS, S3 AWS API GW).Qualifications Highly Preferred BS in computer science or related discipline.Experience with Docker and/or AWS ECS service.Experience with REST API and design (SWAGGER).Experience with GIT configuration management tool.Successfully delivered at least one node.js based application into production environment.Experience Working in a collaborative Agile Software Development (SCRUM).Track record of delivering solutions under tight schedules. Strong oral and written skills in English. Qualifications Preferred Working knowledge of Java. Worked on both Windows and Linux development. Experience on IOT solutions. Knowledge of retail applications. Experience with RFID. Experience deploying Node.js applications on client and/or IOT platforms.', 32, 53, 4, 0, 22, '2022-11-25 00:00:00', 298586),
(63, 'Planner/Scheduler', 'Duties: Using SAP APO, provide materials scheduling support for Oceanside manufacturing.Develop and deploy standard metrics, scheduling analysis for site scheduling activitiesGather input from Site Schedulers to propose solutions to move capacity scheduling from excel into APO.Provide project management support and development of Site Scheduling portfolioPerform other ad-hoc analysis as needed. The environment is fast paced but the job tasks are more analytical and slower moving. Skills:Working knowledge of SAP APO, R/3 and BW reportingAdvanced MS Excel skillsUnderstands solutions design and implementation, including requirements definition, data acquisition processes, data modeling, process automation, and deployment.Requires close interaction with the business groups and technical teams within Site Scheduling, Manufacturing and Facilities.Strong project management skills.Strong organizational skills.Excellent verbal and written communications skills.Must be able to prioritize.Ability to work on numerous and multi-faceted projects at the same time.It is very important that candidates have at least 2 years with SAP experience and that they can monitor SAP alerts/shortages. All reporting will be done through SAP with Excel as the secondary.  Education:Bachelors degree in Industrial Engineering, Information Technology or Business Administration preferred but not necessary with 2-5 years of experience in a similar role. APICS certified preferred but not necessary.', 36, 15, 14, 0, 2, '2022-10-08 00:00:00', 651022),
(64, 'Technical Infrastructure Project Manager', 'Position: Technical Infrastructure Project ManagerLocation: Gardena CADuration: Full Time We are seeking an exceptional Technical Infrastructure Project Manager to be part of Client, a business unit within Beyondsoft. This person will manage large scale projects or programs. This person will be supported by a combination of matrixed teams, which are comprised of geographically disperse suppliers, and cross-functional teams.  Candidates must be familiar with the following:Consulting or Similar EnvironmentsVendor/Supplier ManagementWeb Operations and Infrastructure (i.e., Data Center, Network, Servers, Firewalls, Cloud etc.) This is a very fast paced environment, and we are looking for a dynamic team player who can fit into our fantastic team and be immediately accretive.  In this role, you will need to: Identify Multiple Workstreams, take ownership or work with assigned lead as needed. Plan, track, coordinate and negotiate dozens of priorities at any given time.  Develop, track, and maintain milestones, schedules, minutes, status reports, and other project artifacts and technical deliverables. Develop Expertise:  This includes learning the technical environment we operate in, understanding new technologies and change that are constantly introduced, knowing standard operating procedures, and asking the right questions.Add Value: You will need to quickly asses technical risks, drive technical problem solving, and cut through layers of complexity to determine what is really going and support our teams.  Qualifications A minimum of 7 years of successful IT/Technical Project Management experience with a focus on web based application and/or infrastructure projects A thorough and practical understanding of the Software Development Lifecycle (SDLC) and change management Demonstrated ability to work well with IT stakeholders in defining project scope and objectivesExperience as part of a shared services team a plus Strong written and verbal communication skillsConsulting (or similar) experience with demonstrated success working across matrix client, supplier and geographically dispersed teamsExperience working in a deadline-driven environment, handling and prioritizing multiple tasks and projectsAbility to produce detailed meeting agendas and meeting notesStrong interpersonal and proactive problem solving skillsAbility to work independently with an excellent attention to detailProficient in Excel, Word, PowerPoint, and MS ProjectBachelors Degree requiredMust be able to travel as required If you are interested, please send your resume to jeanie.harris@ispace.com or CALL Jeanie @ 310-563-3843, to discuss more.', 44, 18, 22, 1, 17, '2022-09-17 00:00:00', 262883),
(65, 'Business Analyst', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.Responsibilities Provides companywide strategic, analytical, and technical support for Information Delivery activities. The analyst acts as an intermediary between the business community and the technical community working with IT project teams and business partners to collect, clarify, and translate business requirements into documentation, conceptual designs, and Information Delivery solutions.Partners with business departmental teams to define and document business requirements for new metrics and reports.Elicits requirements using interviews, document analysis, requirements workshops, surveys, site visits, business process descriptions, use cases, scenarios, business analysis, and task and workflow analysis.Creates user-centric designs based on business and functional requirements, user research, market analysis, customer feedback, and usability findings.Designs user interfaces by using conceptual design techniques such as creating visual mock-ups, prototypes, and diagrams.Projects: 50%Day-to-Day Support: 40%Adhoc Request: 10%Qualifications Required Bachelors Degree in Computer Science or a related field is a bonus, but is not required.Certifications are a bonus, but are not required.5+ years of experience in working in systems and applications analysis.Data modelling, database design, database administration and web support.Data collection, data mining, data hygiene, and a close attention to detail. Accuracy is everything for reporting.Experience working in the Microsoft SQL Reporting Services Suite: SSRS, SSAS, SSIS (importance in that order).Database experience in SQL and T-SQL: will create stored procedures, pivot tables (PowerPivot / PowerView), views, triggers, etc.Additional tasks include supporting the company intranet through SharePoint Administration.Must have excellent communication and collaboration skills, as this team works across multiple groups. Someone that can create and build true internal partnerships, open communication skills, a propensity to learn and expand on their abilities, an ability to handle a constantly changing environment, and that can deal with ambiguity.Must be self-motivated and be able to take loose requirements and be creative with it.Qualifications Preferred Data Visualization experience is a major bonus.SharePoint Administration experience.Experience working in Cognos, Tableau, SAP Business Objects or any of the other major reporting tools.', 12, 9, 15, 0, 16, '2022-12-01 00:00:00', 358449),
(66, 'Project Coordinator', 'We need a Project Coordinator person that can handle IT procurements (ordering supplies, sw, hw etc), Contracts/PR\'s entering & tracking and following up with internal teams and vendor contacts to fulfill them etc.Also exposure to IT budget tracking is preferred.', 21, 13, 8, 0, 23, '2022-07-19 00:00:00', 236176),
(67, 'Sr Service Delivery Systems Administrator (DevOps) - 16-01286', 'Primary Skills: Systems Admin, Devops, Scripting,Linux/unix, Load Balance F5Contract Type: W2 Only Duration: 4 Months Contract to Hire Responsibilities: Engage closely with architects, engineering and operations teams to deliver highly available and scalable services with minimal/zero downtime. Build automation scripts and frameworks to improve operational processes and procedures. Learn, deploy and document newer technologies for the potential deployment of services following a development and release life cycle. Support production escalations as needed. Driving ongoing improvements and efficiencies in operational practices, tools & processes. Provide a seamless transition of the application from Product Development to Production Support teams.Required Skills: Strong knowledge/experience with Application and Infrastructure Delivery automation, orchestration and configuration management. Experience operating and troubleshooting VMs in a virtual environment. Ability to effectively communicate with various teams and levels of management Troubleshooting production issues Configuration, management, and performance tuning of App/Web tier (Apache, Jboss, Tomcat, etc.) Operating Systems RHEL, CentOS, Windows 2012+ Applications Java, Tomcat Scripting BASH, Ruby, Python, Perl Version control Perforce Build/Release - Jenkins, Maven, GCC, Make Package YUM/RPM, Zip, Tar Deploy Capistrano, Terraform Provisioning vRA, vSphere, AWS Storage Netapp NFS Mounts and CIFS Networking Infoblox, F5, vCNSQualifications: BS in Computer Science or related field, or equivalent experience. Current/Recent 5+ years back to back related experience. In-depth Linux or other Unix system administration experience. Previous experience delivering a new product, including methodologies, for an enterprise solution.Experience: Extensive experience with Splunk or other log aggregation tools. Experience with Application Load balancing via F5 devices and network troubleshooting. Experience with programming/scripting languages (BASH, Ruby, Python, Perl etc.) Experience in deployment automation, monitoring and maintaining large-scale services with various underlying dependencies in a complex environment.Preferred Skills: Experience with physical and virtual Networking; Cisco firewalls a plus. Experience with AWS and OpenStack a plus.Please apply directly with your updated resume or call Sandeep at: 408.816.2470', 26, 11, 23, 0, 8, '2022-07-06 00:00:00', 611117),
(68, 'Oracle Business Systems Analyst', 'We are seeking an Oracle Business Systems Analyst for our Direct Client. Location: Burbank, CAContract-to-Hire Opportunity  Excellent Benefits Description: Client is looking for highly motivated and energetic individual to join their Oracle Applications team.  The incumbent will work with business teams, Oracle developers, database administrators, business analysts, Oracle fusion middleware teams.   Duties/Responsibilities:Develop, implement and support Business solutions in Oracle R12 E-Business Suite environment particularly in  P2P, General Ledger, Asset Management, Projects modulesWork with Oracle Support for knowledge and issue resolutionSupport month end Period close activities.Support reconciliation between sub-ledgers and General Ledger.Create test scripts, lead and perform system testing.  Support user acceptance testing and go live.Assure adherence to all IT controls and maintain alignment with IT StrategiesManage application lifecycles including release planning (enhancement/upgrade), maintenance (bug fix and routine patching)Performs other duties as assigned or requested Requirements: A Bachelor\'s Degree in Computer Science or related field is preferred.7 + years of experience as a functional analyst in Oracle Applications 11i, R12Expert in General Ledger, Asset Management, ProjectsVery good knowledge in AME, Workflow, Sub-ledger Accounting, iSupplier, iExpensesWorking knowledge in other Oracle modules and Purchasing integration with Vertex a plusExpert in application support including problem analysis and resolutionAble to work as a liaison between the business community and technical teamPossesses excellent problem solving and communication skills (written and verbal)Knows how to use TOAD or other SQL tools to be able to write simple queries to perform data validations and to support end users.Capable of working in a fast paced, dynamic, team-oriented environment.Should be able to work independently under minimal supervision  If you or any of your friends are interested, please email me at the earliest. Regards,Carolyn BrooksTalent Acquisition Managercarolyn.brooks@ispace.com', 3, 7, 13, 1, 13, '2022-12-04 00:00:00', 371428),
(69, 'Sr. EDI Business Analyst', 'VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgESummaryServe as the liaison between the IT community and LTL field users. Identify and analyze business needs/requirements and assist in the design, training, testing and implementation of solutions. Function as the subject matter expert on operations on self-directed project development teams and independently for applications support. Educate IT personnel on how users perform their duties and how operations function. Ensure tasks are completed on a timely basis and conform to specifications, processes and standardized best practices. Position requires some travel. Responsibilities Work directly with all interested parties to elicit and document functional and non-functional requirements that meet business needs providing creative solutions to challenges facing the business.Capture requirements as agile stories and expand stories into narratives to ensure a standard team understanding of the requirements.Work through conflicting requirements to build consensus.Guide prioritization of requirements based on business value, risk, architectural significance, and other drivers.Conduct team reviews of requirement documents, design documents, and work products.Effectively communicate business needs to technical people and communicate and simplify complex technical information for non-technical people.Think and act strategically, grasping and communicating the big picture.Ensure the team\'s work efforts align with business goals.Manage customer expectations.Advocate for the customers and business clients as well as IT groups.Collaborate with Product Owner(s) and Project Manager to complete Iteration and Release Planning, ensuring appropriate technical representation.Assist with project management duties including, status reports, estimating work efforts, planning work assignments.Review QA test plans and scripts to ensure appropriate testing coverage of story requirements.Collaborate on the evaluation of technology for strategic value and use in solving business problems.Perform work activities using the accepted methodology of the team.Work in a self directed team environment with other IT professionals to ensure applications and Web tools add value to business operations.May participate in 24/7 on-call application support as needed.Travel as needed to support projects and develop a deep knowledge of all business areas.QualificationsBachelor\'s degree in business, supply chain management, or technical area generally required.  Will accept any equivalent combination of education, experience and training.7+ years of cross functional business experience including business analysis, IT solutions development, and customer relationships.Broad knowledge of technology and how to connect technology to business problems. Experience with EDI conceptsEffective listening, interviewing, facilitation, and presentation skills.Effective written and verbal communication skills.Working knowledge of IT software and application development methodologies.Working knowledge of project management methodologies. Strong project and time management skills.Working knowledge of EDI is a plus.Provides leadership and guidance to teammates.Ability to learn and grasp topics quickly.Ability to organize, negotiate, and prioritize work and projects.Ability to work in a team environment as well as independently.Establishes good relationships and trust.Experience in any of the following areas is a plus:Knowledge of transportation, logistics and supply chain managementProviding guidance in agile development methodologyUnderstanding of user experience processes and tools', 20, 37, 9, 0, 5, '2022-09-22 00:00:00', 695585),
(70, 'Scientific Software Specialist and BA', 'Keywords / Required Skills:Scientific Software, Business Analyst, Drug Development, biotech, pharma, data extraction, visualization SQL, R, Spotfire, user training material development Req#: 4493616 Scientific Sotware Specialist (and Business Analyst with Visualization)Our client an International Biotech company based in South San Francisco is a seeking a contract resource for the role of Scientific Software Specialist Duties: This position supports the ongoing development of a number of scientific and operational software systems enabling drug development at our client, a large international biotech / pharma firm in South San Francisco.  The position reports into the Development Sciences function, but works closely with the corporate IT group to analyze, design, test, implement, train, and document new software systems. Responsibilities include: Perform business analysis to clarify needs and scope new features Work collaboratively with end users, corporate IT, and the vendor to implement new features Author clear requirements and design documentation Work with end users to define associated business process to meet their needs Author clear and concise user manuals, SOPs, and training documents Perform testing in conjunction with the vendor, corporate IT, and end users Create robust and effective data visualizations using SQL, R, and Spotfire Work hands-on with end users and IT to identify, troubleshoot, and resolve technical and process issues Skills and Requirements: Experience with drug development with particular knowledge of outsourcing Experience working with end users to define business processes and software requirements to meet their needs Ability to author complex technical documents clearly and efficiently Experience with data extraction, analysis and visualization tools such as SQL, R or Spotfire desired Very strong collaboration skills to interact with diverse stakeholders 5-10 years of biotech/pharmaceutical industry experience working with drug development software systems  Please email resume to Jackie at jfelipe@csi-it.com', 16, 25, 17, 0, 11, '2022-10-16 00:00:00', 610455),
(71, 'Linux Engineer', 'Genesis10 is currently seeking a Product Specific Technologist with our client in the financial industry in their New York, NY location. This is a 12 month + contract position. Description:   * High Server Patch project is major effort to remediate security patch level on Grid /Quartz LINUX Infrastructure and deploy recurring patching solution * We are hiring this position to work closely with business technology group, application owners and operations teams to establish and coordinate deployment of automated recurring patching solution * This sophisticated platform requires very specialized skills and this engineer will provide solution, design, development, and implementation and be responsible for co-ordination to facilitating the migration of this platform Responsibilities:   * Requirement analysis of the project * Technical recommendations for automated patching * End to end technical plan for patching * Co-ordination of execution of automated recurring plan Requirements:   * Experience with J2EE, Java, Python, C++ programming, shell script * Strong understanding and working experience of Linux Operating system * Good understanding of Network /Server Infrastructure spanning multiple sites * Experience with J2EE, Java, Python, C++ programming, shell script * Good communication skills, self-motivated, positive attitude and ability to work in a global team environment * Strong troubleshooting skills and application Administration/Support skills * Experience in engineering/upgrading complex solutions in line with demanding client requirements * Solutions engineering (design & implementation of messaging solutions) experience * Proven timely delivery of key infrastructure and products * Good understanding and work experience in an Enterprise Environment * Strong understanding and hands on Linux Operating system * Strong Development experience to write tool on Linux Operating system * Previous software solution to deploy patching solution will be plus * Ability to handle highly volatile support with platform and clients spanning multiple time zones * Ability to adapt quickly to the client needs * Team Player * Good Communication skills * Able to work as a W2 employee of Genesis10 (no Corp-to-Corp) If you have the described qualifications and are interested in this exciting opportunity, please apply! About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 6, 71, 20, 1, 15, '2022-06-21 00:00:00', 473239),
(72, 'Front end-UI developer/UI-Web designer', 'Front end-UI developer/UI-Web designer job opportunity at a top-financial services company located in NYC * Midtown 6 * 12 months with high potential for FTE conversion. AN ONLINE PORTFOLIO IS REQUIRED TO APPLY TO THIS JOB  Contact oleon@fahrenheitit.com846 582 1467 Looking for CANDIDATES LOCATED IN THE TRI-STATE AREA ONLY If qualified and currently considering new job opportunities let*s set up a time to discuss other details at your earliest convenience. Job details: This job is a combination of front end development (css, html, javascript) as well as user interface/web design As far as design * looking for someone who can show artistic/creative samples of user interfaces the candidate has worked in.  Presentation layers are critical [think colors, fonts, easy-to-read language, easy-to-follow design]  Looking for someone who can create interactive charts, graphs for reporting purposes where users can view dashboards, charts, graphs of analytical data (experience with one of the following D3, Angular js, or Node js.  This team is responsible for presenting technical data through graphs, charts *commercial quality* data visualization for a large audience of stakeholders & users.', 31, 69, 19, 0, 1, '2022-12-12 00:00:00', 211685),
(73, 'IT Ops Support', 'SF City, 3+ months contract with extension based on performance If you\'ve enjoyed supporting IT operations before you\'d be familiar with this role. The difference could be that here you will have a lot more authority over the superb processes you create and implement. You will be assisting the CIO administratevily with all the nuances and excitement of IT operations. Sample duties:Assist with tracking of legal related documents, invoice recon, licenses, etcAssist with budgets, presentations, audits, user reviews, etc Qualifications:Excellent (advanced) skills in Excel, Word, Power Point Organized and detail orientedAble to task switch as needed to reflect changing priorities', 14, 73, 6, 0, 7, '2022-06-06 00:00:00', 680295),
(74, 'Senior Product Manager, Pricing - Fulfillment By Amazon', 'Global FBA is looking for a passionate, talented product manager to develop pricing recommendations for the global business. The ideal candidate has outstanding business acumen and judgment, intense curiosity, excellent analytical abilities, strong technical skills, superior written and verbal communication skills, and the ability to influence cross-functional teams. He/she will have a strong bias toward data driven decision making. He/she will be a self-starter, comfortable with ambiguity and juggling multiple projects, able to think big and be creative (while paying careful attention to detail), and will enjoy working in a fast-paced dynamic environment. He/she will work closely with Marketing, Operations, and Finance teams around the world.The scope for this role includes the following: Identify, develop, manage, and execute analyses to uncover areas of opportunity and present written business recommendations that will help shape the future of FBA. Drive development of quantitative models necessary for the evaluation and implementation of new pricing strategies. Collaborate with product managers to develop pricing recommendations for new features or services. Manage fee development and implementation, including long term project planning and development resource allocation. Report key insights and trends, using statistical rigor to simplify and inform the larger team of noteworthy story lines. Collaborate with finance and product management as a leader of quantitative analysis. Analyze and solve business problems at their root, stepping back to understand the broader context. Develop solutions that utilize the highest standards of analytical rigor and data integrity. Recognize and adopt best practices in reporting and analysis: data integrity, test design, analysis, validation, and documentation. Write high quality SQL code to retrieve and analyze data. Learn and understand a broad range of Amazons data resources and know how, when, and which to use. Manage and execute entire projects or components of large projects from start to finish including project management, data gathering and manipulation, synthesis and modeling, problem solving, and communication of insights and recommendations. Build scalable database solutions when required. Participate in periodic reviews with Amazon Executive Leadership team.FBA leverages Amazons global fulfillment and customer service network for third party sellers who want to grow their business on and off Amazon.com. FBA enables customers to take advantage of Free Super Saver Shipping and Amazon Prime on third party items, while sellers can focus on selling rather than shipping. The Sr. Product Manager will be responsible for driving analysis in an effort to improve our understanding of Seller\'s costs globally. The role is global in scope and includes strategy, analysis and execution for FBA in North America, Europe and Asia.  Bachelors or advanced degree. Experience in data mining (SQL, ETL, data warehouse, etc.) and using databases in a business environment with large-scale, complex datasets. Experience managing multiple projects from conception through implementation. Knowledge of accounting, financial, operational, and marketing principles. Experience solving complex quantitative business challenges; experience in the development of pricing analysis is a strong plus. Verbal/written communication & data presentation skills, including an ability to effectively communicate with and influence both business and technical teams. Ability to juggle multiple priorities and make things happen in a fast-paced, dynamic environment; strong bias for action. Demonstrated ability to articulate complex concepts to cross functional audiences.   MBA/Masters/Ph.D degree. Professional traits that are not unique to this position, but necessary for Amazon leaders: Exhibits business judgment Has relentlessly high standards Dives deep Thinks strategically, but stays on top of tactical execution Thinks big and has convictions Results oriented', 22, 63, 16, 0, 10, '2022-09-29 00:00:00', 459051),
(75, 'Infrastructure Production Developer', 'Description:   Our client\'s Infrastructure Production group in delivers a wide range of technologies. The team builds out common services that every department can use and consume to monitor, visualize and diagnose their applications and infrastructure. This team is also the forefront in implementing modern technology ideology within the organization and assist all of the teams with implementation, automation and design. The Production Engineering team is a new team, and is one of the most fast-paced and soon to be widely used across the entire company. You will have the ability to be a part of a large cultural shift within the organization. If you like large scale systems, billions of data points a day, automating all of the things, hacking on open source software and making a cultural impact, ask us where to sign up. Responsibilities:   * Design, architect, automate and deliver large scale production ready services for employees to consume. * Build internal tools to monitor, visualize and diagnose all aspects of applications & hardware in our client\'s stack. * Work closely with our client\'s product and platform teams with architecture, design and scaling challenges they may have. * Help teams replace legacy software and design patterns with modern technologies. * Develop and maintain documentation, training and SLAs for managed infrastructure. Requirements:   * Minimum 2 - 3 years of experience building similar systems * Experience with large scale data processing * Previous experience automating and implementing large scale fault tolerant distributed systems * Experience with physical hardware and provisioning process * Experience working with Opensource software Common Tools used:   * Ruby / Go / Python / Java * Linux * Kafka * Hadoop / Zookeeper / HBase * Mesos * Icinga / OpenTSDB * Chef * Spark If you have the described qualifications and are interested in this exciting opportunity, please apply! About SWATT:   The Genesis10 Software and Technology Team (SWATT) is a specialized recruiting service focused on helping accomplished software developers, programmers, platform engineers and elite technology professionals find once-in-a-lifetime career opportunities in New York City with the world\'s most advanced technology organizations. Whether local to New York or relocating from across North America, we take an authentic approach to helping people make life-changing technology career decisions. For more information go to http://swatt.genesis10.com/ \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/27/2016', 38, 71, 21, 1, 21, '2022-12-24 00:00:00', 501222),
(76, 'C#.NET Client/Server Developer', 'This position is an outstanding contract opportunity for a talented .NET Developer with one of our exciting clients. Work on client/server applications, web, and testing tools. Will work as part of a team updating existing applications as well as the development of new applications to enable automated testing. Position requires 3+ years recent experience developing with the .Net Framework using C# and Object Oriented Design patterns in Windows Form and/or Windows Presentation Foundation applications. 1+ year of experience with SQL (prefer Microsoft SQL Server and T-SQL) with the ability to develop database objects such as stored procedures. 1+ year of verifiable experience developing multithreaded/multiprocessing applications is needed (not necessarily in C#).1+ years of experience with WCF and Team Foundation Server (TFS) is also required. Knowledge of ASP.Net, XML, and Unit Testing (Test Driven Development) are a plus. Knowledge tests in multitasking and Windows client/server application development will be part of the selection process. Excellent written and verbal communication skills are a MUST. Desired skills: .NET Framework, C#, OOD, SQL, T-SQL, ASP.Net, XML, Team Foundation Server, Unit Testing, Multitasking.', 1, 60, 18, 0, 19, '2022-12-21 00:00:00', 789893),
(77, 'Business Systems Analyst', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.ResponsibilitiesPartner with business teams to identify, define, and document requirements to support project and business objectivesConduct and/or participates in the analysis of client business processes and functional requirementsPerform data and process analysis to understand key source systems and using knowledge of application features and functions to assess scope and impact of business needsCollaborate with users, development, and QA teams throughout the project lifecycleAct as client proxy during development and testingIdentify and documents workflow, process diagrams, information resources, and system specificationsParticipate in the analysis and definition of efficient, cost effective solutions that support business processes and functional requirementsSuccessfully design and facilitate requirements elicitation sessions including use of interviews, document analysis, workshops, surveys, business process outcome modeling, personas, user centric design, task and workflow analysisQualifications Proven track record creating innovative product ideas and concepts that meet business and product strategies based on rigorous analysis of customer needs, the current technology landscape and the competitive environment.Strong understanding of enterprise-level eCommerce platforms and technologies including user profile management, messaging platforms, content personalization, product information, and social platforms.Experience working with in-house development teams using SCRUM methodology, authoring user stories and acceptance criteria, collaborating with developers and QA to ensure product features are delivered according to specifications.Proven track record leading cross-functional teams, including architects, developers, designers and business stakeholders. Ability to facilitate business, process, and technical discussions to drive clarity and understanding among a diverse set of senior stakeholders.Ability to create and prioritize feature backlogs and product roadmaps, with a clear understanding of company, group and team goals and objectives.Demonstrated philosophy of continuous improvement, applying product management best practices to your work and sharing those with the Digital Product Management community.A high tolerance for ambiguity and demonstrated ability to achieve business results in a hyper-dynamic environment.Bachelor\'s degree in Business, Computer Science, Marketing, or related field. MBA is preferred.4+ years product management experience in a technology-centric business. Strong B2C digital product management for consumer-facing experiences is a must.', 45, 76, 2, 0, 12, '2022-11-27 00:00:00', 598070),
(78, 'Software Infrastructure C++ Developer', 'Description:   The Software Infrastructure department develops the foundation on which our client\'s developers build their applications - libraries that interface with a wide range of technologies, programmable real-time data processing pipelines, deployment systems and development tools. They are technologists who live and breathe high performance, well-factored, scalable, testable code that reacts quickly to new business initiatives. Our client\'s developers are valued as technical experts and go-to resources throughout the company. Their users and managers are highly technical people. Within the group, all developers have responsibility for the full software development lifecycle, from requirements gathering and coding to deployment and maintenance. Requirements:   We are looking for dedicated and driven software developers with strong technical and programming skills, excellent problem solving ability and appreciation for the scope and impact of their work. The ideal candidate possesses strong knowledge of operating system fundamentals, as well as experience in the design of libraries and software systems. The candidate can expect to be writing well tested, robust, and performance critical code in a cross platform environment. * 3+ years of production level C++ development experience * 3+ years of experience with object-oriented design, data structures and algorithms Preferred Skills:   * Multithreading experience * Solid understanding of data structures and algorithms * Linux/UNIX programming skills * Experience with distributed systems * Knowledge of JavaScript, Python, or Perl * Knowledge of network-layer protocols (TCP/IP, PGM, etc.) If you have the described qualifications and are interested in this exciting opportunity, please apply! About SWATT:   The Genesis10 Software and Technology Team (SWATT) is a specialized recruiting service focused on helping accomplished software developers, programmers, platform engineers and elite technology professionals find once-in-a-lifetime career opportunities in New York City with the world\'s most advanced technology organizations. Whether local to New York or relocating from across North America, we take an authentic approach to helping people make life-changing technology career decisions. For more information go to http://swatt.genesis10.com/ \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/27/2016', 48, 15, 24, 1, 20, '2022-10-26 00:00:00', 352259);
INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(79, 'Account Manager', 'VanderHouwen has more jobs you may like! Find them here: http://bit.ly/1RIQfgESummaryVanderHouwen & Associates, Inc. is rapidly expanding in the Dallas/Fort Worth area!! We are seeking a Business Development/Account Management professional with strong staffing industry experience to join our team. This is a great opportunity to make an impact in a branch supported by a highly successful firm with an established reputation. VHA focuses on long-term employment for our staff so you must be a highly motivated, and dedicated individual. We operate in a fast-paced and competitive market where a goal-oriented, team approach is essential to everyone\'s success. If you are an experienced Account Manager, who has the determination to be part of a dynamic team please submit your resume. We are seeking candidates who have a strong technical background and/or understanding of various technical positions. Qualifications Strong business development and account management background in the staffing industry highly preferred.Experience in creating successful staffing and hiring solutions for a variety of industries and company sizes.2+ years of experience initiating and maintaining long-lasting client relationships, and negotiating service contracts and fees.Ability to proactively promote candidates to support our customer base.Strong analytical and organizational skills to be comfortable with multi-tasking in a fast-paced, competitive environment. Must be a goal-oriented and a team player with excellent written and oral communication skills. What We Offer YouA highly competitive base salaryExcellent commission/bonus plan based on personal goalsExcellent opportunity to build a candidate base in a highly reputable firmState-of-the-art computer systems and recruiting toolsExcellent benefits including medical, dental, vision, life, disability, long term care, matching 401(k), paid time off, and eight paid holidays. Other perks include company-sponsored outings and events throughout the year.***Please apply using a Word-format resume***VanderHouwen & Associates VanderHouwen & Associates, Inc. has been a premier staffing provider of professionals since 1987. While it might seem unusual for a rapid-deploy, results-driven business like ours to take that responsibility personally, we do. Our President*s work ethic not only serves as the foundation of our company, but drives the commitment to individual attention which infuses our culture. Our dedication is to the satisfaction and success of our clients and consultants. We*re committed to providing outstanding service to a uniquely demanding industry in a straightforward, ethical, highly personal, and always-responsive manner.', 54, 65, 10, 1, 6, '2022-11-26 00:00:00', 544037),
(80, 'Technical Recruiter', 'Genesis10 has a full-time opportunity for a creative and resourceful technical recruiter in New York city. Description:   We are looking for a middle to senior level Technical Recruiter for information technology professionals in a perm-placement environment. Responsibilities:   * Understand the capabilities, experience, skills, and motivations of talented candidates * Connect those characteristics to clients\' business and technology needs * Be familiar with the requirements of diverse business and technical specialties * Build credibility and recommend the right staffing or service solutions Qualifications:   * Previous IT recruiting experience in a perm-hire or agency setting * Knowledge of different sourcing techniques for varied requirements * Experience using social media for professional recruiting * Perception and judgment in reviewing resumes and profiles * Talent for matching candidates and requirements * Skill in using behavioral interviewing techniques * Experience in full life cycle recruiting from source to close * A desire to create ongoing professional connections with candidates * Participation in professional associations and groups * A commitment to building relationships outside business hours * The ability to tell good stories that help make the sale If you are a qualified candidate interested in this opportunity, please apply. About Genesis10:   Genesis10 is a privately held company founded in 1999 to provide talent and solutions that power our clients\' business and technology initiatives. We have proven experience across industries including Financial Services, Communications, Consumer Products, Energy, Healthcare, Insurance, Manufacturing and Technology resulting in an annual growth rate of 19% based on client referrals. Genesis10 has over 2,000 highly talented U.S. consultants working with over 150 clients (85% of which are Fortune 500). Our Recruiting and Delivery Teams are career advocates, who get to know candidates beyond their resume in order to match opportunities with skills, experience and aspirations. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. `Genesis10 is an Equal Opportunity Employer, M/F/D/V`  Start Date: 07/05/2016', 2, 22, 1, 0, 9, '2022-08-17 00:00:00', 462763),
(81, 'Senior Technical Writer', 'SENIOR TECHNICAL WRITER REQUIREMENT #16-00879RECRUITER: KADE HYNESJOB LOCATION: CAMDEN, NJ JUNE 7, 2016 Project Description: A resource is required to manage the capture of process documentation (workflows, work instructions, operating procedures) during facilitated work sessions of the project team. This individual will manage all documentation for training and change mgmt. This individual will also be responsible for arranging working sessions across various support groups to complete the initiative. The work and/or project that will be performed: Documentation & Requirements Facilitation: Standard Operating Procedures, Work Instructions, Issue Solutions, Support Matrix Instructions, Process Flows Required Skills: Ability to capture information from working sessions and individual interviews and to develop into the working documents for the organization Must be skilled in Technical Writing, Process Mapping, Facilitation Must be Proficient in Word, Excel, Visio and familiar with OneDrive & SharePoint This 4+ month position starts ASAP. Please E-MAIL your resume (attachment to email) with rate and availability to Kade: kade@alphaconsulting.com', 28, 24, 5, 0, 25, '2022-09-13 00:00:00', 602764),
(82, 'Sr. Quality Assurance Test Analyst', 'Genesis10 is actively seeking Sr. QA Test Analyst in support of our client, a Fortune 25 financial institution. These contract to hire positions are located in Plano, TX. All candidates must be able to work on a W2 basis. No third party candidates will be considered. Summary:   Conducts end-to-end testing on applications and technology, to ensure that business, technical, functional requirements are being met throughout the SDLC. Executes test scripts based upon test strategy/plans in an effort to identify defects prior to production. Tests may be manual, automated or both. May also include Production Certification which requires manual/automated scripts be executed to certify production health and/or identify post-production defects. Responsibilities:   Test Management * Plan, lead, and manage end-to-end test execution to ensure deliverables are on target and business, technical, functional requirements are met. * Understand end-to-end application flow, associated systems, stakeholders and process touch points. * Assign / allocate resources to work during appropriate timelines to meet deliverable dates. * Provide test estimates (and re-estimates) to the team at each appropriate phase. * Ensure compliance of documentation, entry/exit criteria, and role clarity. * Point of contact and escalation for all offshore test related issues.Test Planning * Review all documentation including Business Requirement Documents (BRD), Design documents, Technical Designs (HLD &LLD) or SRS. * Participate in Story Grooming, Sprint Planning , Design reviews * Deliver and review all documentation with testers to ensure complete understanding of goals and requirements. * Issue resolution around Test/Application Teams environments, test process, tools, and resources. * Understand and document each Test/Application Teams environments. * Coordinate with application team to determine and document application test environments. * Document of each Test/Application Teams systems outage times and dates. * Document of each Test/Application Teams systems code migration schedules. Coordinate with application development/environment team for code migration schedulesTest Preparation * Identify regression requirements and assess risks * Work with Onshore Lead to review with project team and business leaders the test plan emphasizing test requirements. * Develop test schedule using WBS (work breakdown structure) and ensure testers are assigned. * Ensure that appropriate Peer and Stakeholder Reviews are completed for Test Plan, Tests, and Risks. * Coordinate with application team to ensure environments are ready and dates are established for code migration.Test Execution and Defect Tracking * Communicate testing conditions to testers (e.g. timeframes have changed, regions changed, environment down, etc.) * Collect all incident reports/metrics and documentation from testers. * Participate in daily status meeting with project management of defects and issues found * Work with Onshore Lead to monitor execution of tests by off-shore testers * Report defects and issues to development through Quality Center / Rally * Assign resolved defect for re-test * Classify type of defect and identify root cause of incident Requirements:   * 5+ years of software testing experience and 2+ years as a test lead * Quick learner and self-starter who requires minimal supervision to excel in a dynamic environment * Deep understanding of the software development process * Traceability matrix development / management * Strong knowledge of project management tools such as Quality Center, JIRA, Rally * Proven ability to lead testing projects of all sizes * Prior experience implementing process improvements in support of testing or software development such as risk based testing * Written and verbal communication across all levels from junior members to senior management * Understanding of SQL * Willingness to train/coach/mentor junior resources * Comfortable working in a matrix environment * Self-motivated, requiring minimal oversight. Desired:   * Exposure to various platforms and technologies: Java, .Net, C++, Web, Mobile, Mainframe * Software development background and knowledge of database design * Familiarity with modern development approaches like Agile/SCRUM/Lean * Prior experience in automation testing (QTP/Selenium/TOSCA/RIT) * Financial Services experience * Prior experience of working with globally distributed teams * Bachelors\' degree in Computer or equivalent professional experience * Extensive experience in Automation Testing using Quick Test Professional (QTP) in development, maintenance and execution of automation scripts, creation of automation framework (Data Driven, keyword, Hybrid), VB Script and Descriptive Programming * Experience in HP Quick Test Professional (QTP) and Quality Center (QC) integration, Rally (Agile) * Experience in automation of data related applications and ETL processes * Skills upgrading scripts from older versions, * Experience in Tosca, Green Hat, IntelliDB, SMARTOMATEIf you have the described qualifications and are interested in this exciting opportunity, apply today! Only W2 candidates will be considered. About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing business or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 47, 46, 7, 0, 18, '2022-10-04 00:00:00', 564258),
(83, 'Business Systems Analyst III', 'VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.SummaryOur client is looking for a Business Systems Analyst III to join their team.Responsibilities Project planning and communication support - preparing communication materials for project steering committee and Leadership groups.Business Requirements gathering and documentation.Business process analysis, documentation and redesign as needed - including new business and document management processes using PW, as well as PW helpdesk/support flows, external flows, etc.Test planning, including test case identification and as needed test scrip development.Training planning and delivery support, including training materials documentation.Post implementation support as needed.', 10, 25, 11, 0, 14, '2022-10-02 00:00:00', 321194),
(84, 'Automated Test Engineer', 'Automated Test Engineer 3-5 years of automated testing experience is required. 100% automation, so heavy on Java with Cucumber and Selenium desired. Must have Selenium experience with mobile and web. Communication skills are important but should be able to follow direction and be comfortable in a managed team environment. Agile experience or knowledge is preferred. Video streaming experience is big plus.', 17, 65, 3, 0, 24, '2022-12-08 00:00:00', 650619),
(85, 'Senior Drupal Developer', 'PTG has a new opportunity in MD!We need your expertise as a Drupal Back End / Module developer who will work in tandem with  UX, and development teams.    With strong communications skills with ability to articulate ideas with others in the team  Required skills:         15 plus years in IT and software development;         6-10 year*s experience working on Drupal projects;         Extensive and diverse background creating custom PHP modules within the Drupal framework.         Strong background in one or more of Drupal*s major themes, i.e. Zen, Omega, etc.         Understanding of browser/client-side, particularly jQuery.         Mastery of Drupal\'s key contrib modules, i.e. CTools, Views, Rules, etc.         Familiarity with Drupal*s \'hook\' system for modifying contributed modules remotely -- from functions     written in custom modules;         Background in \'site building\': to be good at vetting Contributed modules from Drupal.org, installing and configuring modules for \'sandbox\' projects;         Command line competence in Linux to be able to work with sandbox instances. This includes editing server files, navigating server folders, modifying permissions and other such actions         Familiarity with GIT         Familiarity with DB and DB Modeling * in particular MySQL         Full Stack* development capability Must have:        Experience in Public Sector environments        Experience working in cloud environments        W2, available for full-time', 24, 26, 25, 1, 3, '2023-01-01 00:00:00', 202385),
(86, 'Senior Devops Engineer (Contract)', 'Sr Devops EngineerYour job is to understand the daily activities of our development teams and deliver solutions to make them more efficient. Listening to individuals across development, understanding their activities, and constantly thinking about ways to make it more efficient Collaborate with other Senior engineers to drive architecture of CI/CD systems. Hands on involvement in implementation of CI/CD systems. Participate in evaluating and recommending tools and technologies.Desired Skills and Experience: Focus on DevOps CI and CD solutions using various DevOps tools and frameworks Build scalable and resilient services / tools in both private and public cloud Use containers. Expertise in using containers in app build and deployment Experience in designing, building using CI tools (Teamcity/Jenkins) Familiarity with Vagrant, Mesos, Kubernetes, PaaS, Cloud infrastructure (preferred AWS) Familiarity with Log Management solutions (ELK, Splunk, Sumologic, etc) Working knowledge of build systems like Ant, Gradle and Maven. Experience coding software using object-oriented techniques (in order of preference, Java, .Net, C++, Python, other) Hands-on coding/scripting experience with bash, Groovy, python or similar Exposure to leading projects with track record of successful delivery 4 to 6 years of related DevOps experience. BA/BS in Computer Science, Computer Information Systems or related technical field. (In lieu of degree, relevant work experience). Solid communication skillsBonus Qualifications: Experience with Configuration Automation tools (Ansbile, Chef, Puppet, etc) Experience working in Kanban or ScrumPlease contact Meera Makam at 925 627 4935 or email mmakam@ascentsg.com for any questions', 50, 45, 12, 0, 4, '2022-12-17 00:00:00', 425055),
(87, 'Capacity Planning Engineer - 11350', 'Capacity Planning Engineer - 11350 Our client is an entertainment behemoth located in the heart of the worlds entertainment capital.  They are a technology driven company with billions of dollars spent on their delivery infrastructure.  The client urgently requires Systems Architects who will architect infrastructure that scales seamlessly and will meet the growth of their services.  Responsibilities:Analyze the current network and systems architecture for high performance, availability and redundancy and provide guidance on capacity optimizationWork on BMC BCO Capacity planning tool to evaluate current and future state of network and systems and provide guidance and recommendations regarding future capacity growth.Analyze requirements from the business and determine when to scale up and scale down the infrastructureCompile data from various tools (CMDB) to aggregate the data and present this to executives across the organization.Interface with vendors to resolve technical issues with their equipmentWork with various system vendors on evaluating system capacity in the video distribution network and provide recommendations. Systems include routers, switches, firewalls, load balancers, content caches etc.Engage with project teams on major initiatives to understand traffic volumes, work flows and hardware requirements to plan for adequate capacity Requirements:Requires BS/BA in related discipline (i.e., Computer Science, Information Systems) and 3-5 years of experience in related field (i.e., Network Engineering, IP Video Delivery, Content Delivery Networks, Linux System Admin)Experience with BCM capacity planning tools a plusStrong analytical, budgeting and planning skillsExcellent interpersonal and communication skillsExperience developing SQL queries preferred Position Logistics:Must be currently authorized to work in the USContract length: 12 monthsPosition type: ContractPosition location: El SegundoLocal candidates only Whats in it for You:Competitive pay and stable, long term contract (up to 18 months)Outstanding opportunity to make significant contributions to a high visibility team.Excellent facilities and great locationGreat opportunity to enhance or solidify your skills with an excellent and experienced team with solid expertise in this area About the Client:This client has a passion for entertainment, technology and providing unparalleled customer experiences.  They have a track record of continuous technological innovation that has maintained their standing as leaders in their industry.  They have a vibrant, fast paced environment that is the perfect place for an enthusiastic engineer to thrive in. About Maxonic:Since 2002 Maxonic has been at the forefront of connecting candidate strengths to client challenges.  Our award winning, dedicated team of recruiting professionals are specialized by technology, are great listeners, and will seek to find a position that meets the long term career needs of our candidates.  We take pride in the over 5,000 candidates that we have placed, and the repeat business that we earn from our satisfied clients. Interested in Applying?Send us your resume, STAT!  Please apply below with your most current resume and anything else youd like us to know about you  commute preferences, desired work environments, etc.  We promise to get back to you within 24 hours.  Feel free to email Medha Haridas (medha@maxonic.com) or call 408-648-2010.    Key Words:  Capacity planning', 53, 50, 4, 0, 22, '2022-08-24 00:00:00', 213964),
(88, 'Data Center Virtualization Architect', 'Data Center Virtualized Networking Architect ResponsibilitiesThis is more of a true Data Center Engineer role as part of the Advanced Engineering (AE) team within our client.  Required Attributes for Data Center Virtualized Networking Architect Engineer: Solid Cisco network and Data Center architectural design and hands-on engineering experience Solid knowledge of and experience Virtualization Networking, NFV, Nuage, NSX and UCS Solid knowledge of and experience with BGP and ISIS. Strong knowledge of and experience with the implementation of Cisco Nexus data center switches, including the latest designs trends such as Leaf and Spine and *   Design, testing, and implementation of the datacenter network service to partition the data-centerRequirements Bachelors is preferred, Associates or equivalent combination of work experience is required CCIE Datacenter or Routing and Switching certification preferred, but not req*d 5+ years of experience designing and implementing Virtualized Networking and UCS.', 27, 48, 14, 0, 2, '2022-07-07 00:00:00', 338106),
(89, 'Procurement System Manager', 'PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is looking for a Procurement System Manager for their new SaaS solution Coupa as they roll out the solution globally.  ResponsibilitiesProvide subject matter expertise on core Coupa functionality and configuration.Identify opportunities and recommend possible solutions to address business needs and issues.Establish and manage Coupa change management processes, testing, and governance in line with industry best practices.Serve as day to day point of contact with Coupa on upcoming major and minor releases.Manage and foster relationships with internal and external partners.Qualifications3+ years of professional experience in SaaS change management.3+ years of professional experience in managing SaaS vendor relationships.Coupa certification or previous experience with Coupa preferred.Previous experience in procure to pay business processes a plus.Strong leadership skills; ability to lead cross-functional business and technical teams.Expert analytical skills; ability to quickly grasp complex business concepts and formulate recommendations for resolution or improvement.Skilled presenter/trainer possessing strong written, verbal, and inter-personal communication skills.Proven energy to navigate complex organizational structures.', 40, 48, 22, 0, 17, '2022-08-01 00:00:00', 227232),
(90, 'Sr. Information Risk Management Analyst', 'SummaryIn the Information Risk Management, Risk Professional Sr. Analyst role, you\'ll execute with IT leadership to build, deliver and operate an information security and risk management assessment strategy that is integrated into the fabric of company DNA. You will be involved in developing a risk management program that is driven by the value and classification of information and working with the data stewards to align the support and participation in the mitigation of information risk for the company. Your primary responsibilities will be to assist leadership in building and executing the process and tracking information risk decisions across multiple internal functions. You will partner with Global Process Leaders (GPL*s), Global Technology Leaders (GTL*s), Product Engines and internal Governance teams such as Legal, Corporate Audit and Tech in designing processes and controls that effectively mitigate information security risk. This opportunity requires knowledge and experience related to information security disciplines, risk management techniques and effective communication and presentation skills. You must have a strong desire to operate as a leader and comfort working in an ambiguous and fast paced environment where your ability to define the future sets the pace for delivery. Strong speaking, writing and influencing skills are required as the opportunity to present verbally or in written form to IT and business leadership is frequent. Knowledge of IT internal control methodologies such as COBIT, COSO, and/or ISO 27000 along with certifications in information security disciplines, IT auditing or governance are beneficial. Experience in marketing desired.ResponsibilitiesIdentify, document and elevate visibility to information risk, where business direction creates potential for exposure to employee, athlete and product sensitive data streams. Develop, drive and lead a strategy around the management of information risk utilizing mechanisms to track the identification, remediation or acceptance of risk decisions.Evaluate vendor processes at the point of engagement with company and ensure sufficient validation of data sharing arrangements and agreements protect sensitive information.Perform formal risk assessments on partner and vendor connections and ensure the business objectives align with the type and volume of data used in maintaining a *need to know/use* mindset.Create a subscription to the information risk assessment process through pro-active partnerships and collaboration with internal business partners. Become an advocate of Information security procedures, policies, and processes, and standards as a mechanism to enable the business effectively while managing risk appropriately.Provide enforcement of security policies, standards and procedures by working cross functionally with Compliance and Governance functions within the Corporate Information Security organization.Propose and implement methods to ensure information security awareness.Support the risk analysis intake process and communicate to stakeholders.Stay current on information security technologies, trends, standards and best practices.QualificationsBachelor\'s degree in Business Information Management or Computer Science desired. Minimum 5-8 years\' experience in information security including information security or IT control design processes or a combination of 5 years in these disciplines with some experience in marketing and corporate communication. Must have or be working toward at least one of the following certifications: Certified Information Systems Security Professional (CISSP), Certified Information Security Manager (CISM), Certified Information Systems Auditor (CISA) or Certified Expert in the Governance of Information Technology (CEGIT), or SANS / GIAC Certifications.Awareness of information and data security best practices, benchmarking and key performance indicators (KPI\'s).Knowledge of information security principles and practices, general procedures and guidelines.A general understanding of technology use, trends and risks as it applies in a business context and environment.Excellent communication skills (written and verbal) as well as comfort and experience in presentation delivery.Proven persuasion skills.Proven experience identifying solutions for complex problems in enterprise environments.Proven analytical and problem solving ability.The ability to appropriately communicate complex security risks to non-technical staff Must be trustworthy in keeping sensitive data confidential.', 43, 27, 15, 0, 16, '2022-11-28 00:00:00', 761131),
(91, 'Software Development Engineer', 'Amazon\'s Website Request Handling team designs, creates, and owns the critical software layer accepting, filtering, and routing all web traffic from the public Internet to its many websites. We use this software to route and manage traffic, detect and block robot and security threats, and enable Amazon\'s businesses to quickly and safely launch new websites and new countries.Our team is starting exciting new projects to take Amazon to the next level in scale and security; if you love making critical high performance software focused on networking, data processing, and security, we have the job for you.The ideal candidate is a champion of engineering excellence: raising the bar on quality, consistency, maintainability, performance, security and all the other things that make great software great. In addition, he/she should contribute elegant, practical code that solves some of the most difficult problems in the project.The opportunity to make an impact in this role is only limited by the personal capacity of the candidate!  Bachelors Degree or better in Computer Science or related field, or 5+ years relevant work experience 3+ years professional experience in software development Computer Science fundamentals in object-oriented design, data structures, and algorithms Computer Science fundamentals in networking and operating systems Proficiency in C and at least one high-level programming language such as Java, C++, C#   Have written high performance software using networking protocols such as TCP, SSL, DNS, etc. Experience with computer security and intrusion detection development or research Experience with large-scale data processing and mining Experience with distributed computing and enterprise-wide systems Experience or interest in Cloud Computing and other emerging technologies Experience in communicating with users, other technical teams, and senior management to collect requirements, describe software product features, technical designs, and product strategy Experience influencing software engineers best practices within your team', 25, 6, 8, 0, 23, '2022-06-21 00:00:00', 441574),
(92, 'Account Coordinator II', 'Genesis10 is seeking Construction Coordinators in Austin, TX! Our client\'s projects, like our users, span the globe and require its employees to keep the big picture in focus. As a member of the Construction Project Coordinator Team, you assist in working with internal customers to usher projects through the entire project lifecycle. This includes managing project schedules and clearly communicating goals to project stakeholders, while ensuring projects progress and meet their deadlines. Our client is striving to innovate Fiber-to-the Home by providing Gig speed internet to its end users. As the MxU Construction Coordinator, you are responsible for assisting the team in the day to day activities of moving our client\'s MxU projects from sales to engineering and through the completion of construction. You will have a demonstrated passion for project management with an entrepreneurial spirit and a passion for client management. Responsibilities:   - Represent the Client Fiber Construction Coordinator program to users and external partners, providing outstanding support and relationship building in all interactions. - Work closely with owners/property managers from sales close and site survey through engineering and installation including contracts, scheduling, and escalations. - Answer project specific design related engineering question to external clients when appropriate - Maintain an ongoing relationship with properties, even post-installation - Handle and track escalations, both internal and external - Track progress of multiple projects and update team on a daily, weekly, and monthly basis - Work closely with the local operations lead, construction manager, and internal cross-functional teams. - Assist with engineering and construction questions as requested by the client Fiber sales or engineering teams. - Manage Salesforce construction project tickets end to end and ensure all SLA\'s are being met. Minimum qualifications:   - BA/BS degree or equivalent practical experience. - 2 years of industry experience with experience in MxU process flow from contract to construction completion. - Experience working with customers/clients and setting expectations appropriately. - Experience in measuring and improving productivity, and scaling initiatives. Project management experience. - Excellent interpersonal skills - Ability to multi-task and think quickly - Deadline and detail oriented Preferred Qualifications:   - Proficiency in using Salesforce - Experience in telecommunications, preferably in a Fiber related field - An understanding of MDU engineering and construction, such as various industry design standards and construction methods in both condo and tenant MDU environment. - Excellent analytical and problem solving skills If you have the described qualifications and are interested in this exciting opportunity, please apply! About Genesis10:   Genesis10 is a leading U.S. business and technology consulting firm with hundreds of clients needing proven talent and solutions to power their strategic initiatives. If you are a high performing telecommunications or IT professional with solid, referenced experience, we want to meet you. Genesis10 recruiters and delivery professionals are highly accomplished career advocates, who get to know you beyond your resume to position you with the opportunities that fit your skills, experience and aspirations. We have benefit options to fit your needs and a support staff that works with you from placement throughout your engagement - project after project. To learn more about Genesis10 and to view all our available career opportunities, please visit us at www.genesis10.com. \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"', 42, 61, 23, 0, 8, '2022-07-27 00:00:00', 362941),
(93, 'Technical Lead Supply Chain - 12241', 'Our client is one of largest retailers in the world.  Yet their IT department is nimble and dynamic, and works with cutting edge technologies.  Their Information Technology Department has an opening for a Technical Lead with experience leading applications design and integration of Retail Buying and Demand Planning for FMCG distribution centers. This position is located in Pleasanton, California. Responsibilities: The most commonly used applications in this area currently are INFOREM, iTrade, Axway Gateway, and Oracle B2B combined with in-house developed capabilities.Lead projects, allocate and manage resources.Oversee the work of less experienced staff.Provide technical leadership, coach and mentor team members.Lead troubleshooting and root cause determination and proactively identify opportunities to fix issues.Must be able to make sound decisions based on incomplete information, under pressure and maintain project focus.Developing strong working relationships at levels in the business and IT community to ensure overall project satisfaction.Requirements:3+ years of Analysis/Design of Retail Buying and Demand Planning systems.5+ years of Retail or Supply Chain applications development experience.6+ years of programming experience including experience integrating applications across diverse technical platforms.Strong experience with application server (WebSphere, WebLogic) and database technologies (Oracle, DB2, SQL Server).Strong knowledge of UNIX/AIX, Windows, and Mainframe technologies.Strong experience with the full software development lifecycle and software development methodologies (Waterfall, Agile).  Position logistics:Must be currently authorized to work in the USPosition type: Contract to HirePosition location: Pleasanton, CA Whats in it for You:Competitive pay for contract and permanent positions, with excellent stability and opportunity for growth.Great opportunity to enhance or solidify your skills with an excellent, diverse and experienced team.Work on multiple projects allows you to get experience with a variety of technologies and teams. About the Client:This client has a strong reputation as a responsible corporate citizen and has long been committed to improving the quality of life in the communities they serve.  With numerous training programs and outlets for development, they ensure that employees are continually strengthening their skill set and developing as individuals.  Their facilities are modern, clean and comfortable. About Maxonic:Since 2002 Maxonic has been at the forefront of connecting candidate strengths to client challenges.  Our award winning, dedicated team of recruiting professionals are specialized by technology, are great listeners, and will seek to find a position that meets the long term career needs of our candidates.  We take pride in the over 5,000 candidates that we have placed, and the repeat business that we earn from our satisfied clients. Interested in Applying?We cant wait to see your resume.  Please apply below with your most current resume and anything else youd like us to know about you  commute preferences, desired work environments, etc.  We promise to get back to you within 24 hours.  Feel free to email Jalpa (jalpa@maxonic.com) or call 408-739-4900 x 114.  Key Words:  Software, Retail, Buying, Demand Planning, system, Analysis, Design, Supply Chain, applications development, WebSphere, WebLogic, Oracle, DB2, SQL Server, UNIX/AIX, Windows, and Mainframe', 41, 75, 13, 0, 13, '2022-11-11 00:00:00', 288713),
(94, 'C++ Software Developer for Multi-Asset Risk System', 'Our client\'s R&D group works on some of the most fascinating and influential technical challenges in business and finance. Their multi-asset risk platform deals with large portfolios consisting of cross asset derivatives - interest rate, credit, FX, equity, and fixed income. The platform supports millions of calculations that drive various analytics such as VAR, CVA, CSA, and margin calculations. They are growing their team and are looking for dedicated and driven software developers with strong technical and programming skills, excellent problem solving ability and appreciation for the scope and impact of their work. A successful candidate will have to solve large scale distributed computation problems to manage millions of calculations bringing together billions of data points every day in an efficient and fault-tolerant fashion. Experience with big databases (Hbase, Cassandra), stream processing (Storm/Kafka), and distributed load balancing/scheduling is desirable. A background in finance and derivatives is a plus, but not a requirement. Strong communication skills and the ability to do well in a collaborative environment are paramount. You will... * Design, code, implement, and test new features of the platforms(mostly C++) * Work with product managers to translate and understand product specifications accurately * Manage projects, including estimation, scheduling, milestone tracking, risk management, and project status reporting The ideal candidate has... * A passion for design, problem solving, and hands-on development * At least 4 years of software engineering experience in object-oriented programming such as C++, Java, C# * Familiarity with SQL, Python, and JavaScript * Experience with high volume, high availability distributed systems * Experience with and/or interest in full software development lifecycle activities: requirements management, technical design, implementation, testing/release * Multi-threading experience * Interest and/or experience in financial domains is desirable If this describes YOU, please apply! About SWATT:   The Genesis10 Software and Technology Team (SWATT) is a specialized recruiting service focused on helping accomplished software developers, programmers, platform engineers and elite technology professionals find once-in-a-lifetime career opportunities in New York City with the world\'s most advanced technology organizations. Whether local to New York or relocating from across North America, we take an authentic approach to helping people make life-changing technology career decisions. For more information go to http://swatt.genesis10.com/ \"Genesis10 is an Equal Opportunity Employer, M/F/D/V\"  Start Date: 06/27/2016', 34, 34, 9, 0, 5, '2022-11-01 00:00:00', 773908),
(95, 'Senior MySQL DBA', 'Fahrenheit IT is seeking a Database Administrator (DBA) to execute on database strategies and take responsibility for database integrity, architecture, modeling, security, and performance tuning for our MySQL databases. This person will play a key role in managing and improving the health and stability of our MySQL instances. This person will will display proficiencies in MySQL administration as well as basic Linux administration in a 24x7 production environment.Responsibilities Basic Database administration - install, configure, upgrade, and migrate existing databases Serve as an escalation point for any defined database issues regarding performance, security, and ongoing maintenance Automate various DBA tasks Optimization of database performance Devise and implement key constraints to ensure database integrity Work with developers and system engineers to troubleshoot and optimize queries and performance bottlenecks for current and future products and services Assist in formalizing and updating database policies, procedures, and technical standards, including disaster recovery planningMinimum Requirements: MySQL DBA experience in a 24x7 production environment. 3-6 years of database management/administration and performance tuning experience Strong proficiency with Linux with experience performing basic administrative tasks Experience implementing multi-master replication (Galera experience is a plus) Experience with version control; specifically Git and GitHub. Mastery of one or more of: Python, Ruby, Bash, or other scripting language Understanding of virtualization environments Bachelor\'s degree in Computer Science or related field preferred Familiarity with Percona toolkit', 13, 69, 17, 1, 11, '2022-10-07 00:00:00', 281462),
(96, 'Manager of IS Network Engineers', 'This is a Full Time position for a Manager of IS Network Engineers in Albany, NY Job Description: This position will have the responsibility to manage and oversee Company\'s Network Department. This includes the local and wide area networks, as well as, the day-to-day (24x7x365) network operations. The successful candidate will have expert hands-on technical knowledge of Cisco enterprise networking technologies in a multi-site enterprise including but not limited to; core switching, Nexus fabric, ASA firewalls, edge and core routing, managed wireless, vLANs, DMZs, network load balancing , etc. They will possess expert knowledge of core server technologies including the complete virtualization layer platform (SAN storage, fiber channel networks, virtualization software, DR replication, high availability configurations, etc. This position coordinates and ensures organization-wide technology systems are well managed/administered to provide required services to the organization. The manager will be responsible for establishing policies, standards, practices, and security measures to assure effective and consistent information and operations and maintaining the appropriate level of documentation. They will optimize the performance and availability of the network and end-user infrastructures through the application of best practices such as performance monitoring, capacity planning and trend analysis and recommends improved methodologies. The successful candidate must be possess exemplary management skills as well as the ability to lead and mentor staff in design, build, implementation and troubleshooting of a Cisco based wide and local area network.Mandatory Requirements: Bachelor degree. 5 - 7 years of experience. Excellent verbal and written communication skills. Requires strong interpersonal relationship skills.Preferred Qualifications: Experience in Cisco enterprise networking technologies Demonstrate a solid multi-site Network Architecture and Engineering experience base. Demonstrate strong data networking experience with Cisco infrastructure (OTV, EIGRP, HSRP, STP, vlans, FCoE, port security, NAC, and Client) CCNP/ or equivalent certification Possess strong personnel management skills Experienced budget planning and preparation Possess strong Project Planning skills with the ability to effectively prioritize of tasks, projects, etc.. in a dynamic environment Possess strong analytical skills with detailed knowledge of network and security software and tools General working knowledge with storage technologies (NAS, SAN, and direct attached storage) Ability to present ideas in user-friendly language Keen attention to detail Strong customer service orientationAll qualified applicants will receive consideration for employment without regard to race, creed, color, religion, national origin, sexual orientation, gender identity, disability, sex or age.', 29, 16, 20, 0, 15, '2022-12-01 00:00:00', 634545),
(97, '(US)-Program Manager Senior', 'Responsible for managing one or more highly complex IT program(s) consisting of multiple projects. The program manager will be managing a transformation initiative to migrate an existing a business onto a new platform to support the Pensions Buyout business. The program manager will be responsible for managing a team of business and IT stakeholders located in multiple locations. The scope of work is comprised of a large functional enhancement effort, along with data conversion, and image migration activities. Drives the program strategy, supporting business case and various enterprise wide high-level project plans. Ensures integration of projects and adjusts project scope, timing, and budgets as needed, based on the needs of the business. Responsible for delivering all projects contained in the IT project portfolio on time, within budget and meeting the strategic and business requirements. Responsible for tracking key project milestones and recommending adjustments to Project Managers. Communicates the program strategy, direction and changes with IT leadership, business leadership and IT business consultants (onshore and offshore). Partners with senior leadership of the business community to identify and prioritize opportunities for utilizing IT to achieve the goals of the program and business objectives. This is a single or multiple incumbent(s) position that typically exists in a small to medium size enterprise with multiple project managers, project leaders and/or project support staff as direct or dotted line reports. The position reports directly to the VP of Application Development. Princeton Information is one of the nation\'s top five privately-held IT consulting firms, in business since 1985. Princeton Information services a clientele of primarily Fortune 500 companies nationwide. With annual revenues over $120 million, Princeton Information operates across the US from multiple regional offices. Our Commitment to Our Consultants As a privately held company, Princeton Information is solely committed to the success of clients and consultants - not to any shareholders. PI\'s success is grounded in the relationships we build with our consultants. We seek the best people; provide career path counseling; as well as the most challenging opportunities in business and in IT. As part of its culture of loyalty and commitment to its consultants, Princeton Information is committed to doing all we can to ensure our consultants have the best possible search, placement and work experience possible. Our Services Working with one Princeton Recruiter will gain you access to over 500 open requirements with the top clients in the US across all industries (finance, insurance, pharmaceutical, commercial, telecom, media, manufacturing) nationwide. Our local recruiters have in-depth knowledge of our clients and opportunities. They will work with you to find you the best possible opportunities for you and your career. Our Relationships Our relationships with our clients, as well as our consultants, are critical to our success! We have a robust sales organization that ensures that Princeton has the inside track on what attributes a person needs in order to be successfully placed and engaged at our clients. We know the technical and non-technical skills that our clients are looking for and we ensure that you are educated about the client prior to your interview with them. Princeton is committed to going above and beyond to ensure that each meeting you have with a client is a successful one!', 49, 48, 19, 0, 1, '2022-06-21 00:00:00', 732633);
INSERT INTO `allas` (`id`, `allas_neve`, `allas_leirasa`, `munkakor_id`, `hirdeto_id`, `kapcsolat_id`, `diak_vallalhatja`, `helyszin_id`, `kezdes_idopontja`, `berezes`) VALUES
(98, 'Business Analyst - Mortgage/Equiting Lending, Lean Six Sigma Green Belt/Black Belt', 'Job Description: Seeking a Business Process Analyst with industry and functional experience in process re- engineering. Will manage one specific track of the business process re-engineering or improvement efforts as part of a large scale project. Will work with a cross-functional team to re-design business process to align with new technology implementation or business strategy.At the direction of the Business Transformation Leader, assist in establishing clear objectives and deliverables of converting technologies, the look and design of the new platform for the track that supports the business. Schedule and run all phase reviews and track reviews in support of the business process Leader/DirectorTrack progress, report status and make necessary corrections to achieve all track goalsManage risks and issues through effective contingency plans and proper escalation. Organize and lead team meetings and maintain schedule. Analyze and report actual performance vs. business case goals. Work in a self directed environment. Present to track management on program status.Required Skills: Mortgage/Equiting Lending, Lean Six Sigma Green Belt/Black Belt. Don\'t hesitate! Submit your resume today. SMCI is an EEO employer. All qualified applicants will receive consideration without regard to race, color, religion, sex, pregnancy, national origin, disability, age, genetic information, veteran status, sexual orientation and identity, AIDS/HIV, medical condition, political activities or affiliations, or status as a victim of domestic violence, assault, or stalking. (No third parties, please)(H1 sponsorship currently unavailable)(Local candidates only, please)', 18, 20, 6, 0, 7, '2022-07-14 00:00:00', 559345),
(99, 'DHMSM Operational Medicine Interface Developer', 'TAD PGS, INC. is currently seeking a DHMSM Operational Medicine Interface Developer for one of our clients in Vienna, VA.**Per Government Sector, U.S. Citizenship is required Company Description: Our client designs, develops, and sustains offerings that empower diplomatic missions, support war fighter requirements, and advance exploration from the ocean floor to outer space. They maintain leadership positions in supply chain management, hardware integration, and global network integration. They do all this with the constant and deliberate commitment to ethical performance and integrity that has marked their company since its founding. Job Description: Provide support to MHS GENESIS system external interface design, development, integration, test, troubleshooting, and sustainment. Participate in planning and requirements analysis, design, technical review and implementation for new interfaces. Support creation of Interface Control Documents. Provide support to Rhapsody developers and coders. Perform Unit Testing of completed code modules. Develop Assembly Test plans and scripts, and provide support to Assembly Test as necessary. Provide support to integration engineers to complete integration of new interfaces to MHS GENESIS system. Major Responsibilities:Provide engineering support to External Interface Team.Support the full system engineering life-cycle, including requirements analysis, design, development, integration, test, and implementation.Involves substantial knowledge of this technical field and the ability to complete moderately difficult and moderately complex assignments.Receives assignments in the form of objectives and establishes goals to meet objectives. Complete daily assignments and tasks meeting defined best practices and operational workflow.Work is reviewed and measured based on meeting objectives and schedules.Establishes and recommends changes to policies which affect subordinate organization(s).Required Qualifications:Bachelor\'s degree in a related field and 6 years experience in a broad range of assignments in technical tasks directly related to the proposed area of responsibility.Mid-level systems engineering skills required.Experience with DoD EHR programs (ALTA, TMIP-J) highly valued.TAD PGS, INC. specializes in delivering secure, reliable and rapidly implemented workforce solutions to the U.S. Federal marketplace, including U.S. Government agencies and their prime contractors. With more than 50 years of experience, TAD PGS, INC. has earned a reputation for accountability, a value that government agencies and prime contractors both demand and deserve.TAD PGS, INC. sources professionals for the full spectrum of federal positions, from administrative to management, and those contracts requiring extremely niche-oriented technical skills and the highest levels of security clearance.', 35, 25, 16, 1, 10, '2022-08-31 00:00:00', 585123),
(100, 'Information Technology Architect', 'Our client, one of the world\'s leading professional services organizations, is seeking an Information Technology Architect.   Location: Alpharetta, GA or Secaucus, NJ Position Type: Contract   - As a senior infrastructure architect - Data Analytics (Management Service) we are looking for someone who has broad knowledge is most of the areas. -We we are using the Tableau, Spotfire , R, MS PowerBI in our environment. - We have applications designed using start of the art technology hosted in an enterprise grade data centers. - Review functional and nonfunctional requirements for new systems and enhancements, to identify gaps and inconsistencies, and translate these into requirements for infrastructure build-out. - Architect Infrastructure solutions with no single points of failure.  - Including architecting failover solutions across multiple data centers. - Lead new technology integration via requirements analysis, design, and implementation. - Make recommendations and support implementations of new tools and technologies. - Engage with firm\'s operations teams and third party vendors on an as needed basis. - Oracle, SQL , .NET, Java, Windows, Linux, IIS, Websphere , Exchange, Lync, VMWare, Citrix, SAN, NAS, Converged network  - Act as the primary technical support resource to projects. - Assist in providing analyses of new and different technologies and in recommending efficient and cost-effective solutions to meet specific technical or business requirements. - Coordinate the activities of specific projects related to department or team initiatives. - Gather and analyze information for developing and modifying IT systems and recommend the use of specific methods and techniques to facilitate development.   Experience/Required Skills:   - Approximately 4-6 years of experience in information systems architecture methodologies - Knowledge of systems architecture   - Good interpersonal, communication, consultative, and organizational skills - Ability to work and team effectively with clients, management and its staff members   Education:   - A bachelor\'s degree in Computer Science or a related discipline, or equivalent work experience', 15, 42, 21, 1, 21, '2022-06-26 00:00:00', 732514);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diakszovetkezet`
--

DROP TABLE IF EXISTS `diakszovetkezet`;
CREATE TABLE `diakszovetkezet` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `diakszovetkezet`
--

INSERT INTO `diakszovetkezet` (`id`, `nev`) VALUES
(1, 'Diák-Meló Szövetkezet'),
(2, 'Diák-Mind Szövetkezet'),
(3, 'Fürgeláb Szövetkezet'),
(4, 'Dolgos Diák Szövetkezet'),
(5, 'DiákJobs Szövetkezet');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diakszovetkezetnel_van`
--

DROP TABLE IF EXISTS `diakszovetkezetnel_van`;
CREATE TABLE `diakszovetkezetnel_van` (
  `diakszovetkezet_id` int(11) NOT NULL,
  `diak_felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `diakszovetkezetnel_van`
--

INSERT INTO `diakszovetkezetnel_van` (`diakszovetkezet_id`, `diak_felhasznalo_id`) VALUES
(3, 1),
(3, 2),
(5, 3),
(4, 4),
(2, 5),
(4, 6),
(5, 7),
(4, 8),
(2, 9),
(3, 10),
(2, 11),
(5, 12),
(4, 13),
(2, 14),
(1, 15),
(3, 16),
(1, 17),
(5, 18),
(5, 19),
(3, 20),
(1, 21),
(3, 22),
(2, 23),
(4, 24),
(2, 25),
(3, 26),
(3, 27),
(2, 28),
(1, 29),
(1, 30);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diak_felhasznalo`
--

DROP TABLE IF EXISTS `diak_felhasznalo`;
CREATE TABLE `diak_felhasznalo` (
  `id` int(11) NOT NULL,
  `fiokadat_id` int(11) NOT NULL,
  `iskola_id` int(11) DEFAULT NULL,
  `vallalat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `diak_felhasznalo`
--

INSERT INTO `diak_felhasznalo` (`id`, `fiokadat_id`, `iskola_id`, `vallalat_id`) VALUES
(1, 117, 12, NULL),
(2, 120, 14, NULL),
(3, 121, 13, 6),
(4, 123, 10, NULL),
(5, 126, 11, NULL),
(6, 127, 15, NULL),
(7, 128, 11, NULL),
(8, 129, 9, NULL),
(9, 131, 9, NULL),
(10, 132, 2, NULL),
(11, 133, 14, NULL),
(12, 135, 7, NULL),
(13, 137, 10, 9),
(14, 139, 10, NULL),
(15, 144, 2, 5),
(16, 145, 10, NULL),
(17, 148, 1, NULL),
(18, 153, 9, 13),
(19, 155, 12, NULL),
(20, 159, 10, 27),
(21, 160, 4, NULL),
(22, 166, 2, 14),
(23, 168, 4, NULL),
(24, 170, 8, NULL),
(25, 171, 1, 20),
(26, 173, 8, NULL),
(27, 176, 3, NULL),
(28, 177, 12, NULL),
(29, 178, 11, NULL),
(30, 181, 5, 28);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `egyeb_feltetelek`
--

DROP TABLE IF EXISTS `egyeb_feltetelek`;
CREATE TABLE `egyeb_feltetelek` (
  `id` int(11) NOT NULL,
  `kell_jogsi` tinyint(1) NOT NULL,
  `munkatapasztalat_ev` int(11) NOT NULL,
  `egyeb_feltetelek` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `egyeb_feltetelek`
--

INSERT INTO `egyeb_feltetelek` (`id`, `kell_jogsi`, `munkatapasztalat_ev`, `egyeb_feltetelek`) VALUES
(1, 0, 3, 'Aktív hallgatói jogviszony'),
(2, 1, 1, 'Aktív hallgatói jogviszony'),
(3, 0, 5, 'Szakképesítés'),
(4, 1, 2, 'Legalább egy előző munkahely'),
(5, 1, 3, 'Legalább egy előző munkahely'),
(6, 1, 4, 'Érvényes számlaszám'),
(7, 0, 4, NULL),
(8, 0, 1, 'Legalább egy előző munkahely'),
(9, 0, 3, NULL),
(10, 1, 1, NULL),
(11, 0, 3, 'Szakképesítés'),
(12, 0, 5, 'Aktív hallgatói jogviszony'),
(13, 1, 1, 'Szakképesítés'),
(14, 0, 1, NULL),
(15, 1, 0, 'Érvényes számlaszám'),
(16, 1, 3, 'Érvényes számlaszám'),
(17, 0, 5, 'Érvényes számlaszám'),
(18, 1, 0, 'Szakképesítés'),
(19, 1, 3, NULL),
(20, 1, 4, NULL),
(21, 0, 0, 'Legalább egy előző munkahely'),
(22, 0, 2, 'Legalább egy előző munkahely'),
(23, 0, 0, 'Érvényes számlaszám'),
(24, 0, 0, 'Aktív hallgatói jogviszony'),
(25, 1, 0, 'Legalább egy előző munkahely'),
(26, 0, 4, 'Szakképesítés'),
(27, 0, 2, 'Aktív hallgatói jogviszony'),
(28, 1, 4, 'Legalább egy előző munkahely'),
(29, 0, 2, 'Érvényes számlaszám'),
(30, 0, 3, 'Legalább egy előző munkahely'),
(31, 0, 4, 'Aktív hallgatói jogviszony'),
(32, 0, 4, 'Legalább egy előző munkahely'),
(33, 0, 5, 'Legalább egy előző munkahely'),
(34, 1, 5, NULL),
(35, 1, 1, 'Legalább egy előző munkahely'),
(36, 1, 5, 'Szakképesítés'),
(37, 0, 1, 'Érvényes számlaszám'),
(38, 0, 5, NULL),
(39, 0, 2, 'Szakképesítés'),
(40, 1, 4, 'Szakképesítés'),
(41, 1, 3, 'Szakképesítés'),
(42, 0, 1, 'Aktív hallgatói jogviszony'),
(43, 1, 0, NULL),
(44, 1, 2, NULL),
(45, 0, 4, 'Érvényes számlaszám'),
(46, 0, 3, 'Érvényes számlaszám'),
(47, 0, 1, 'Szakképesítés'),
(48, 1, 3, 'Aktív hallgatói jogviszony');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fiokadatok`
--

DROP TABLE IF EXISTS `fiokadatok`;
CREATE TABLE `fiokadatok` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jelszo` varchar(50) NOT NULL,
  `fiok_tipusa` int(11) DEFAULT NULL,
  `szemelyes_adatok_id` int(11) DEFAULT NULL,
  `admin_e` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `fiokadatok`
--

INSERT INTO `fiokadatok` (`id`, `email`, `jelszo`, `fiok_tipusa`, `szemelyes_adatok_id`, `admin_e`) VALUES
(1, 'admin@admin.com', 'admin', NULL, NULL, 1),
(2, 'heroine@outlook.com', 'yseYHG8v2B', 2, 83, 0),
(3, 'panolex@sbcglobal.net', '7MNp25f3nA', 2, 100, 0),
(4, 'alias@icloud.com', '4C3qZv9ENS', 1, NULL, 0),
(5, 'weidai@gmail.com', 'qRpTbUC6BX', 2, 3, 0),
(6, 'elflord@sbcglobal.net', 'Cn6Dt2cTj4', 1, NULL, 0),
(7, 'yzheng@yahoo.com', 'zgXaxf6nNe', 2, 48, 0),
(8, 'stevelim@aol.com', 'Q3fdhDgNCL', 2, 40, 0),
(9, 'houle@att.net', 'Kg8Fs2D9n5', 1, NULL, 0),
(10, 'dinther@msn.com', 'UgYG3eFSaM', 2, 20, 0),
(11, 'lstein@icloud.com', '8ZFRExvbAk', 2, 85, 0),
(12, 'thaljef@msn.com', 'JCaE4GABcw', 2, 9, 0),
(13, 'gboss@icloud.com', 'szYFLSrR7D', 2, 2, 0),
(14, 'campbell@outlook.com', 'JGH5mQj9tF', 2, 35, 0),
(15, 'muadip@outlook.com', 'Kfejy4mnvq', 2, 92, 0),
(16, 'portele@comcast.net', 'gr6KV5b2j3', 2, 31, 0),
(17, 'geeber@verizon.net', '4KvsjkrEhP', 1, NULL, 0),
(18, 'munson@outlook.com', 'jFugYB5TrV', 2, 41, 0),
(19, 'mglee@msn.com', 'rC3xdptWUN', 2, 91, 0),
(20, 'sravani@comcast.net', '8ANMCgYwBX', 2, 4, 0),
(21, 'brbarret@gmail.com', 'B7DZSFhLa3', 2, 15, 0),
(22, 'donev@aol.com', 'PFe6tGBVRL', 2, 69, 0),
(23, 'nasor@att.net', 'Y2ywEDPRav', 2, 1, 0),
(24, 'rfoley@aol.com', 'QfBL9vRrhS', 1, NULL, 0),
(25, 'njpayne@comcast.net', 'nW5v9QYR2p', 1, NULL, 0),
(26, 'mgemmons@optonline.net', 'Q2rc79RLMK', 2, 10, 0),
(27, 'rwelty@live.com', 'HPZtdN4w5D', 1, NULL, 0),
(28, 'sartak@yahoo.ca', 'MT2PUcuRre', 2, 79, 0),
(29, 'dialworld@hotmail.com', 'Su5Havx8wp', 1, NULL, 0),
(30, 'johnbob@verizon.net', 'YuLDs9c7zb', 1, NULL, 0),
(31, 'luvirini@sbcglobal.net', 'LPvTnJC6HK', 1, NULL, 0),
(32, 'jbailie@optonline.net', '2uJcFRrh5Q', 1, NULL, 0),
(33, 'danneng@live.com', 'nHGKZq8P5D', 1, NULL, 0),
(34, 'conteb@aol.com', 'VTLmF5eBsN', 2, 93, 0),
(35, 'kewley@sbcglobal.net', 'cSF78YvyZe', 2, 24, 0),
(36, 'suresh@comcast.net', 'Jc4DgFmd6j', 1, NULL, 0),
(37, 'denism@yahoo.ca', '2DgxzvtLR9', 2, 8, 0),
(38, 'jonas@outlook.com', 'ZqKTuA9S6m', 2, 38, 0),
(39, 'munson@aol.com', 'LdFwtK7aZY', 2, 46, 0),
(40, 'donev@icloud.com', 'K6CXvDWhuq', 2, 78, 0),
(41, 'aibrahim@me.com', 'DhgrPUw7ab', 2, 53, 0),
(42, 'balchen@att.net', 'mjR8FrptJQ', 2, 44, 0),
(43, 'improv@yahoo.com', 'nLHcVpsx5y', 2, 58, 0),
(44, 'mchugh@icloud.com', 'AQ93Zba7hH', 1, NULL, 0),
(45, 'vmalik@msn.com', 'wAJy7SkHaC', 2, 43, 0),
(46, 'thomasj@yahoo.ca', 'NnE8J3CfkG', 1, NULL, 0),
(47, 'thrymm@att.net', 'sKkQr38FmH', 2, 72, 0),
(48, 'eidac@aol.com', 'zsBVt3dFDH', 2, 34, 0),
(49, 'bartlett@yahoo.com', 'z7xTg5yHsq', 2, 97, 0),
(50, 'rkobes@msn.com', 'nf8uCWAwLK', 1, NULL, 0),
(51, 'fairbank@mac.com', '8VbsgqChQz', 1, NULL, 0),
(52, 'jonathan@gmail.com', 'NhKU7FLgWv', 1, NULL, 0),
(53, 'kramulous@aol.com', 'f6wymY52ek', 2, 51, 0),
(54, 'muzzy@comcast.net', '5Kc4EprFMZ', 2, 6, 0),
(55, 'spadkins@yahoo.com', 'j6zHr9RXyA', 1, NULL, 0),
(56, 'petersko@gmail.com', 'aL9ZjNDdcG', 1, NULL, 0),
(57, 'pspoole@gmail.com', 'ex3NsBdptu', 2, 80, 0),
(58, 'jdhildeb@icloud.com', 'zWqU7r385M', 2, 26, 0),
(59, 'jeteve@live.com', 'wEHhUMuxD2', 2, 87, 0),
(60, 'kayvonf@att.net', 'fsnNV3mrKz', 1, NULL, 0),
(61, 'parents@outlook.com', 'L8f5kKXwpx', 2, 42, 0),
(62, 'zilla@yahoo.com', 'TfRrUCaXF6', 1, NULL, 0),
(63, 'mbrown@icloud.com', 'N54jRFc2ZE', 1, NULL, 0),
(64, 'hikoza@optonline.net', 'UrLE4kVYtn', 1, NULL, 0),
(65, 'curly@live.com', 'cPCGBu2xFQ', 2, 16, 0),
(66, 'crowl@yahoo.ca', '94kvZm5eS3', 2, 37, 0),
(67, 'djpig@yahoo.com', 'bxP8f5yWs2', 2, 5, 0),
(68, 'gozer@yahoo.ca', 'v7wj9qDt4F', 2, 59, 0),
(69, 'bartlett@optonline.net', '2Jv6nt8Dbm', 2, 95, 0),
(70, 'panolex@gmail.com', 'NPXvf2wqsU', 2, 62, 0),
(71, 'mosses@icloud.com', 'XK5CMb2cQs', 2, 61, 0),
(72, 'jandrese@sbcglobal.net', 'CVmY2bgNHQ', 2, 63, 0),
(73, 'bastian@hotmail.com', 'bywUGdZgE8', 2, 19, 0),
(74, 'rwelty@yahoo.ca', 'sjJT8zdY26', 1, NULL, 0),
(75, 'aracne@msn.com', 'DJ5cLuaZx3', 2, 7, 0),
(76, 'bescoto@sbcglobal.net', 'HX5w34CWbQ', 1, NULL, 0),
(77, 'magusnet@verizon.net', 'y9n8CmBA25', 2, 74, 0),
(78, 'duncand@optonline.net', 'RKMU5YymEs', 1, NULL, 0),
(79, 'goresky@sbcglobal.net', 'pdUQr8Rjwt', 2, 89, 0),
(80, 'jonathan@gmail.com', 'tYPEn6yzXZ', 2, 55, 0),
(81, 'dawnsong@gmail.com', 'eFGSRz42pn', 1, NULL, 0),
(82, 'jusdisgi@outlook.com', '7QbeFqhH4M', 2, 82, 0),
(83, 'aschmitz@gmail.com', 'BrMzKtb5aN', 1, NULL, 0),
(84, 'kmiller@gmail.com', 'yEfxDNLkV6', 2, 88, 0),
(85, 'mkearl@verizon.net', '9nuZ3EfKFC', 1, NULL, 0),
(86, 'chance@hotmail.com', 'PLvmTtqHs6', 1, NULL, 0),
(87, 'fmerges@msn.com', 'pLcGhakAN5', 1, NULL, 0),
(88, 'fallorn@yahoo.com', 'v5zTtywgC6', 2, 39, 0),
(89, 'bigmauler@verizon.net', 'QEGA5VSb7K', 1, NULL, 0),
(90, 'dsugal@mac.com', 'kAbWhU4gKQ', 2, 54, 0),
(91, 'shrapnull@live.com', 'tUg2eMnQGj', 2, 98, 0),
(92, 'makarow@gmail.com', 'AY2Rfyh7WZ', 1, NULL, 0),
(93, 'cfhsoft@optonline.net', '3JdEZC7g2H', 1, NULL, 0),
(94, 'crowl@yahoo.com', '7tTvnEpsx9', 2, 75, 0),
(95, 'mcnihil@sbcglobal.net', 'NKSshByL6f', 2, 32, 0),
(96, 'hllam@aol.com', '7MpReWSzuJ', 2, 45, 0),
(97, 'laird@me.com', 'CaqDudx3cV', 1, NULL, 0),
(98, 'qrczak@sbcglobal.net', 'CsWJRbg4zd', 1, NULL, 0),
(99, 'scarlet@verizon.net', 'd5Qmwr3xn4', 2, 22, 0),
(100, 'ivoibs@aol.com', '4SVzTkQC8j', 2, 23, 0),
(101, 'fmerges@mac.com', 've7kjcnMQA', 1, NULL, 0),
(102, 'gamma@msn.com', 'fP6EU83vAg', 2, 12, 0),
(103, 'maradine@mac.com', 'Y9yJUpMEvq', 1, NULL, 0),
(104, 'rmcfarla@sbcglobal.net', 'e4zPJKshrc', 2, 65, 0),
(105, 'crusader@live.com', 'wQba5DKqPZ', 2, 94, 0),
(106, 'bmorrow@sbcglobal.net', 'RVP5npMCvE', 2, 76, 0),
(107, 'gmcgath@verizon.net', 'pmF4q2MetY', 1, NULL, 0),
(108, 'rmcfarla@sbcglobal.net', '2HkqQYWZgR', 1, NULL, 0),
(109, 'houle@comcast.net', 'NX8gzDfMFv', 1, NULL, 0),
(110, 'mbrown@live.com', 'HwymTeV38d', 1, NULL, 0),
(111, 'durist@msn.com', '5dKywtUnxN', 2, 50, 0),
(112, 'dpitts@yahoo.ca', 'xrFWkbvKR8', 2, 77, 0),
(113, 'bartlett@aol.com', 'nCzMjtp83E', 2, 29, 0),
(114, 'odlyzko@comcast.net', 'Le4dJN7pPH', 1, NULL, 0),
(115, 'lstein@yahoo.com', 'gCkMDBQpq9', 2, 33, 0),
(116, 'keiji@aol.com', 'TqQ9W3NsSU', 2, 96, 0),
(117, 'dogdude@live.com', 'KRgWsL9YXv', 3, 64, 0),
(118, 'jesse@outlook.com', 'fEhtm87zHd', 1, NULL, 0),
(119, 'rmcfarla@att.net', 'G7TV8uD34E', 1, NULL, 0),
(120, 'burns@comcast.net', 'rKL4gNAX3W', 3, 70, 0),
(121, 'joglo@gmail.com', 'M4YFCv3bXG', 3, 66, 0),
(122, 'farber@sbcglobal.net', '54jmFpGxM2', 1, NULL, 0),
(123, 'kudra@aol.com', '7RJCr85mwx', 3, 27, 0),
(124, 'erynf@comcast.net', '9YB64EUgRP', 1, NULL, 0),
(125, 'arachne@icloud.com', 'BFUD7usndj', 1, NULL, 0),
(126, 'cantu@sbcglobal.net', 'kgvMW6LVC9', 3, 57, 0),
(127, 'scarlet@hotmail.com', 'xcemtY5Ggs', 3, 21, 0),
(128, 'microfab@msn.com', 'pVZgYHQ2Mn', 3, 56, 0),
(129, 'ilikered@aol.com', 'st3jvHMpZB', 3, 71, 0),
(130, 'sburke@live.com', 'ZHhwtKrq7F', 1, NULL, 0),
(131, 'bockelboy@yahoo.com', 'Tf2rGMNWPw', 3, 84, 0),
(132, 'overbom@att.net', '7cSXFqQkaG', 3, 14, 0),
(133, 'kiddailey@icloud.com', 'L7BtqTQjWp', 3, 13, 0),
(134, 'jadavis@mac.com', '5wxRbsJfQA', 1, NULL, 0),
(135, 'wagnerch@comcast.net', 'ZxsRywQv28', 3, 90, 0),
(136, 'lamprecht@att.net', 'WuJEAH3US9', 1, NULL, 0),
(137, 'formis@yahoo.com', '3sEbHpfjqr', 3, 36, 0),
(138, 'crowemojo@att.net', 'yGsuhfa4Tr', 1, NULL, 0),
(139, 'jfinke@aol.com', 'LVwfS36Jhr', 3, 47, 0),
(140, 'rtanter@mac.com', 'n9fzLXUmuY', 1, NULL, 0),
(141, 'pemungkah@icloud.com', '3WpXH5DyfG', 1, NULL, 0),
(142, 'aibrahim@optonline.net', 'hmNH8MyWgF', 1, NULL, 0),
(143, 'rcwil@msn.com', 'UqjPDyQXf2', 1, NULL, 0),
(144, 'sisyphus@optonline.net', 'ZBVkXsH3GL', 3, 67, 0),
(145, 'nimaclea@hotmail.com', 'aeU24WSdFT', 3, 73, 0),
(146, 'eurohack@att.net', 'G4UJQpgRYr', 1, NULL, 0),
(147, 'pkplex@verizon.net', '8pRqegf3SU', 1, NULL, 0),
(148, 'jbailie@yahoo.com', 'q3rm7yHgpu', 3, 81, 0),
(149, 'stomv@comcast.net', 'PLgy5dTp3f', 1, NULL, 0),
(150, 'timtroyr@me.com', 'WZj3JG2xKm', 1, NULL, 0),
(151, 'tmccarth@hotmail.com', '2K5AxJHmha', 1, NULL, 0),
(152, 'eabrown@mac.com', 'DyAd6YHqG9', 1, NULL, 0),
(153, 'cyrus@mac.com', 'KtaRL4AEhP', 3, 49, 0),
(154, 'jfmulder@yahoo.com', 'sD28mT36By', 1, NULL, 0),
(155, 'dunstan@gmail.com', 'T8vHZeCp9j', 3, 68, 0),
(156, 'bester@mac.com', 'tQPUjyRT9F', 1, NULL, 0),
(157, 'plover@att.net', 'TP2yHYgCW6', 1, NULL, 0),
(158, 'isotopian@yahoo.ca', 'qc3rjW8Hew', 1, NULL, 0),
(159, 'pkilab@att.net', 'sTz5e7849w', 3, 28, 0),
(160, 'vlefevre@comcast.net', 'Vz8wXS9Q6N', 3, 17, 0),
(161, 'janneh@mac.com', 'MNJbs6wQ2C', 1, NULL, 0),
(162, 'kassiesa@live.com', 'Epn3dGw9zN', 1, NULL, 0),
(163, 'fluffy@verizon.net', 'UGW6QH7gap', 1, NULL, 0),
(164, 'schwaang@gmail.com', 'aDJ3uEbwVK', 1, NULL, 0),
(165, 'hahiss@aol.com', 'eZjA8XKNSV', 1, NULL, 0),
(166, 'goresky@optonline.net', '4vALJzuEFt', 3, 86, 0),
(167, 'pemungkah@me.com', 'YPXEM6zD2u', 1, NULL, 0),
(168, 'matsn@msn.com', 'P3U8KgHcDq', 3, 30, 0),
(169, 'hoyer@yahoo.com', 'WfES9VkLAc', 1, NULL, 0),
(170, 'dburrows@optonline.net', 'DTge3CWBSU', 3, 100, 0),
(171, 'symbolic@mac.com', '7dLjWNhH2b', 3, 11, 0),
(172, 'andrei@yahoo.com', 'LDxygrm7fp', 1, NULL, 0),
(173, 'zeller@icloud.com', '7X428WNTKw', 3, 99, 0),
(174, 'moinefou@msn.com', '2vTLWkwaVm', 1, NULL, 0),
(175, 'thaljef@att.net', 'kjN3p4yGHv', 1, NULL, 0),
(176, 'pdbaby@yahoo.ca', 'jcdGEKqYP7', 3, 18, 0),
(177, 'pedwards@yahoo.ca', 'P2rS8WFfKn', 3, 52, 0),
(178, 'aibrahim@me.com', 'QqHB6nbcD3', 3, 60, 0),
(179, 'mallanmba@me.com', 'QnMqJ7HvmB', 1, NULL, 0),
(180, 'rgarcia@optonline.net', 'ph6KQWeaF4', 1, NULL, 0),
(181, 'jimmichie@verizon.net', 'hN64u5arLD', 3, 25, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `helyszin`
--

DROP TABLE IF EXISTS `helyszin`;
CREATE TABLE `helyszin` (
  `id` int(11) NOT NULL,
  `orszag` varchar(50) NOT NULL,
  `varos` varchar(50) NOT NULL,
  `tavolrol_vegezheto_e` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `helyszin`
--

INSERT INTO `helyszin` (`id`, `orszag`, `varos`, `tavolrol_vegezheto_e`) VALUES
(1, 'Magyarország', 'Budapest', 0),
(2, 'Magyarország', 'Debrecen', 0),
(3, 'Magyarország', 'Szeged', 1),
(4, 'Magyarország', 'Pécs', 1),
(5, 'Magyarország', 'Sopron', 0),
(6, 'Magyarország', 'Szombathely', 0),
(7, 'Magyarország', 'Kecskemét', 0),
(8, 'Magyarország', 'Siófok', 0),
(9, 'Magyarország', 'Miskolc', 0),
(10, 'Magyarország', 'Győr', 0),
(11, 'Magyarország', 'Szolnok', 0),
(12, 'Magyarország', 'Kaposvár', 0),
(13, 'Magyarország', 'Veszprém', 1),
(14, 'Magyarország', 'Békéscsaba', 1),
(15, 'Magyarország', 'Székesfehérvár', 1),
(16, 'Magyarország', 'Baja', 1),
(17, 'Magyarország', 'Cegléd', 0),
(18, 'Magyarország', 'Csongrád', 0),
(19, 'Magyarország', 'Gyula', 0),
(20, 'Magyarország', 'Esztergom', 1),
(21, 'Magyarország', 'Dunaújváros', 1),
(22, 'Magyarország', 'Dunakeszi', 1),
(23, 'Magyarország', 'Érd', 0),
(24, 'Magyarország', 'Hatvan', 0),
(25, 'Magyarország', 'Hódmezővásárhely', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirdeto`
--

DROP TABLE IF EXISTS `hirdeto`;
CREATE TABLE `hirdeto` (
  `id` int(11) NOT NULL,
  `fiokadatok_id` int(11) NOT NULL,
  `vallalat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `hirdeto`
--

INSERT INTO `hirdeto` (`id`, `fiokadatok_id`, `vallalat_id`) VALUES
(1, 4, 18),
(2, 6, 22),
(3, 9, 1),
(4, 17, 4),
(5, 24, 10),
(6, 25, 14),
(7, 27, 26),
(8, 29, 1),
(9, 30, 20),
(10, 31, 16),
(11, 32, 10),
(12, 33, 18),
(13, 36, 12),
(14, 44, 8),
(15, 46, 21),
(16, 50, 29),
(17, 51, 25),
(18, 52, 1),
(19, 55, 18),
(20, 56, 7),
(21, 60, 18),
(22, 62, 25),
(23, 63, 27),
(24, 64, 7),
(25, 74, 18),
(26, 76, 22),
(27, 78, 13),
(28, 81, 24),
(29, 83, 30),
(30, 85, 4),
(31, 86, 24),
(32, 87, 12),
(33, 89, 2),
(34, 92, 25),
(35, 93, 18),
(36, 97, 26),
(37, 98, 28),
(38, 101, 1),
(39, 103, 19),
(40, 107, 6),
(41, 108, 23),
(42, 109, 11),
(43, 110, 26),
(44, 114, 7),
(45, 118, 28),
(46, 119, 29),
(47, 122, 10),
(48, 124, 9),
(49, 125, 25),
(50, 130, 5),
(51, 134, 19),
(52, 136, 30),
(53, 138, 22),
(54, 140, 7),
(55, 141, 18),
(56, 142, 3),
(57, 143, 17),
(58, 146, 20),
(59, 147, 19),
(60, 149, 4),
(61, 150, 12),
(62, 151, 26),
(63, 152, 26),
(64, 154, 23),
(65, 156, 2),
(66, 157, 29),
(67, 158, 17),
(68, 161, 27),
(69, 162, 24),
(70, 163, 20),
(71, 164, 24),
(72, 165, 7),
(73, 167, 19),
(74, 169, 17),
(75, 172, 30),
(76, 174, 19),
(77, 175, 18),
(78, 179, 21),
(79, 180, 22);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `iskola`
--

DROP TABLE IF EXISTS `iskola`;
CREATE TABLE `iskola` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `varhato_befejezes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `iskola`
--

INSERT INTO `iskola` (`id`, `nev`, `varhato_befejezes`) VALUES
(1, 'Állatorvostudományi Egyetem', 2024),
(2, 'Bolyai János Gimnázium', 2023),
(3, 'Kandó Kálmán Szakközépiskola', 2025),
(4, 'Állatorvostudományi Egyetem', 2026),
(5, 'Szegedi Tudományegyetem', 2023),
(6, 'Szegedi Tudományegyetem', 2026),
(7, 'Bolyai János Gimnázium', 2024),
(8, 'Szegedi Tudományegyetem', 2022),
(9, 'Kandó Kálmán Szakközépiskola', 2023),
(10, 'Állatorvostudományi Egyetem', 2027),
(11, 'Állatorvostudományi Egyetem', 2022),
(12, 'Bolyai János Gimnázium', 2024),
(13, 'Szegedi Tudományegyetem', 2022),
(14, 'Kandó Kálmán Szakközépiskola', 2025),
(15, 'Állatorvostudományi Egyetem', 2026);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezok`
--

DROP TABLE IF EXISTS `jelentkezok`;
CREATE TABLE `jelentkezok` (
  `allas_id` int(11) NOT NULL,
  `normal_felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `jelentkezok`
--

INSERT INTO `jelentkezok` (`allas_id`, `normal_felhasznalo_id`) VALUES
(14, 4),
(93, 49),
(13, 11),
(37, 29),
(64, 38),
(71, 60),
(65, 11),
(15, 62),
(7, 45),
(9, 25),
(56, 56),
(63, 28),
(39, 68),
(73, 34),
(18, 18),
(36, 21),
(73, 19),
(97, 51),
(5, 31),
(57, 24),
(75, 67),
(72, 49),
(15, 45),
(48, 71),
(22, 42),
(29, 67),
(31, 27),
(19, 68),
(11, 35),
(72, 71),
(35, 54),
(53, 28),
(65, 56),
(34, 55),
(12, 4),
(9, 64),
(3, 18),
(63, 19),
(82, 37),
(69, 55),
(97, 68),
(96, 42),
(57, 44),
(1, 43),
(52, 17),
(28, 38),
(8, 2),
(78, 6),
(86, 46),
(21, 22),
(61, 30),
(18, 71),
(37, 71),
(5, 25),
(52, 42),
(50, 18),
(39, 7),
(88, 52),
(30, 14),
(60, 68),
(59, 35),
(13, 2),
(83, 29),
(47, 52),
(44, 39),
(93, 67),
(43, 70),
(5, 20),
(88, 56);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcsolat`
--

DROP TABLE IF EXISTS `kapcsolat`;
CREATE TABLE `kapcsolat` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `kapcsolat`
--

INSERT INTO `kapcsolat` (`id`, `nev`, `email`, `telefon`) VALUES
(1, 'Gáspár Mihály', 'gasparmihaly@gmail.com', 620516675),
(2, 'Veres Kálmán', 'vereskalman@gmail.com', 2147483647),
(3, 'Kelemen Ferenc', 'kelemenferenc@gmail.com', 2147483647),
(4, 'Fülöp Rajmund', 'fuloprajmund@gmail.com', 2147483647),
(5, 'Pataki Bálint', 'patakibalint@gmail.com', 2147483647),
(6, 'Tamás Márkó', 'tamasmarko@gmail.com', 2147483647),
(7, 'Molnár István', 'molnaristvan@gmail.com', 2147483647),
(8, 'Faragó Levente', 'faragolevente@gmail.com', 61481971),
(9, 'Fehér Ákos', 'feherakos@gmail.com', 2147483647),
(10, 'Balázs Károly', 'balazskaroly@gmail.com', 2147483647),
(11, 'Székely Flórián', 'szekelyflorian@gmail.com', 670574882),
(12, 'Vass Ádám', 'vassadam@gmail.com', 2147483647),
(13, 'Takács Gergő', 'takacsgergo@gmail.com', 2147483647),
(14, 'Molnár Dalma', 'molnardalma@gmail.com', 2147483647),
(15, 'Novák Lilla', 'novaklilla@gmail.com', 2147483647),
(16, 'Kis Georgina', 'kisgeorgina@gmail.com', 2147483647),
(17, 'Biró Dorka', 'birodorka@gmail.com', 62091156),
(18, 'Takács Réka', 'takacsreka@gmail.com', 2147483647),
(19, 'Fülöp Regina', 'fulopregina@gmail.com', 2147483647),
(20, 'Gáspár Ágnes', 'gasparagnes@gmail.com', 2147483647),
(21, 'Jakab Dominika', 'jakabdominika@gmail.com', 2147483647),
(22, 'Egyed Kíra', 'egyedkira@gmail.com', 2147483647),
(23, 'Pintér Éva', 'pintereva@gmail.com', 2147483647),
(24, 'Vincze Sára', 'vinczeSara@gmail.com', 2147483647),
(25, 'Halász Fruzsina', 'halaszfruzsina@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `munkakor`
--

DROP TABLE IF EXISTS `munkakor`;
CREATE TABLE `munkakor` (
  `id` int(11) NOT NULL,
  `allas_tipusa` varchar(50) NOT NULL,
  `szuksegse_vegzettseg` varchar(50) DEFAULT NULL,
  `egyeb_feltetelek_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `munkakor`
--

INSERT INTO `munkakor` (`id`, `allas_tipusa`, `szuksegse_vegzettseg`, `egyeb_feltetelek_id`) VALUES
(1, 'Fizikai', 'Érettségi', NULL),
(2, 'Fizikai', 'Érettségi', 27),
(3, 'Fizikai', 'Érettségi', 21),
(4, 'Fizikai', 'Érettségi', 46),
(5, 'Fizikai', 'Érettségi', 47),
(6, 'Fizikai', '8 Általános', NULL),
(7, 'Fizikai', '8 Általános', 1),
(8, 'Fizikai', '8 Általános', 22),
(9, 'Fizikai', '8 Általános', 31),
(10, 'Fizikai', '8 Általános', 15),
(11, 'Fizikai', '8 Általános', 38),
(12, 'Fizikai', '8 Általános', 10),
(13, 'Fizikai', '8 Általános', 37),
(14, 'Irodai', '8 Általános', 35),
(15, 'Irodai', '8 Általános', NULL),
(16, 'Irodai', '8 Általános', 7),
(17, 'Irodai', 'Érettségi', NULL),
(18, 'Irodai', 'Érettségi', 4),
(19, 'Irodai', 'Érettségi', 2),
(20, 'Irodai', 'Érettségi', 26),
(21, 'Irodai', 'Érettségi', 8),
(22, 'Irodai', 'Érettségi', 43),
(23, 'Irodai', 'Érettségi', 16),
(24, 'Irodai', 'Diploma', 44),
(25, 'Irodai', 'Diploma', NULL),
(26, 'Irodai', 'Diploma', 41),
(27, 'Irodai', 'Diploma', 33),
(28, 'Irodai', 'Diploma', 34),
(29, 'Irodai', 'Diploma', 39),
(30, 'Fizikai', 'Diploma', 12),
(31, 'Fizikai', 'Diploma', NULL),
(32, 'Fizikai', 'Diploma', 18),
(33, 'Fizikai', 'Diploma', 9),
(34, 'Fizikai', 'Diploma', 6),
(35, 'Fizikai', 'Diploma', 11),
(36, 'Fizikai', 'Diploma', 45),
(37, 'Fizikai', 'Diploma', 28),
(38, 'Fizikai', 'Diploma', 23),
(39, 'Fizikai', 'Diploma', 32),
(40, 'Fizikai', 'Diploma', 17),
(41, 'Fizikai', 'Diploma', 14),
(42, 'Fizikai', '8 Általános', 24),
(43, 'Fizikai', '8 Általános', 36),
(44, 'Fizikai', '8 Általános', 40),
(45, 'Fizikai', '8 Általános', 5),
(46, 'Fizikai', '8 Általános', 29),
(47, 'Irodai', 'Érettségi', 20),
(48, 'Irodai', 'Érettségi', 42),
(49, 'Irodai', 'Érettségi', 30),
(50, 'Irodai', 'Diploma', 13),
(51, 'Irodai', 'Diploma', 19),
(52, 'Irodai', 'Diploma', 3),
(53, 'Irodai', 'Diploma', 25),
(54, 'Irodai', 'Diploma', 48);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `normal_felhasznalo`
--

DROP TABLE IF EXISTS `normal_felhasznalo`;
CREATE TABLE `normal_felhasznalo` (
  `id` int(11) NOT NULL,
  `fiokadatok_id` int(11) NOT NULL,
  `vegzettseg_id` int(11) NOT NULL,
  `vallalat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `normal_felhasznalo`
--

INSERT INTO `normal_felhasznalo` (`id`, `fiokadatok_id`, `vegzettseg_id`, `vallalat_id`) VALUES
(1, 2, 50, NULL),
(2, 3, 55, 22),
(3, 5, 39, 21),
(4, 7, 83, NULL),
(5, 8, 8, NULL),
(6, 10, 5, NULL),
(7, 11, 11, 12),
(8, 12, 81, NULL),
(9, 13, 51, 3),
(10, 14, 95, NULL),
(11, 15, 67, NULL),
(12, 16, 72, 19),
(13, 18, 35, 28),
(14, 19, 42, NULL),
(15, 20, 82, 20),
(16, 21, 25, NULL),
(17, 22, 24, 25),
(18, 23, 82, NULL),
(19, 26, 64, 14),
(20, 28, 47, NULL),
(21, 34, 39, NULL),
(22, 35, 10, 28),
(23, 37, 49, NULL),
(24, 38, 56, 1),
(25, 39, 93, 18),
(26, 40, 72, NULL),
(27, 41, 36, 6),
(28, 42, 70, NULL),
(29, 43, 36, NULL),
(30, 45, 59, 5),
(31, 47, 64, 30),
(32, 48, 14, 20),
(33, 49, 9, NULL),
(34, 53, 20, 17),
(35, 54, 11, 9),
(36, 57, 64, 11),
(37, 58, 78, NULL),
(38, 59, 8, 4),
(39, 61, 24, 25),
(40, 65, 84, 21),
(41, 66, 12, 7),
(42, 67, 12, NULL),
(43, 68, 65, 25),
(44, 69, 91, 27),
(45, 70, 28, NULL),
(46, 71, 93, 22),
(47, 72, 17, 10),
(48, 73, 37, NULL),
(49, 75, 47, 10),
(50, 77, 49, 29),
(51, 79, 78, NULL),
(52, 80, 55, 11),
(53, 82, 24, 13),
(54, 84, 21, NULL),
(55, 88, 58, 5),
(56, 90, 63, 25),
(57, 91, 44, NULL),
(58, 94, 37, 1),
(59, 95, 37, 26),
(60, 96, 20, 17),
(61, 99, 70, NULL),
(62, 100, 78, NULL),
(63, 102, 69, 11),
(64, 104, 43, NULL),
(65, 105, 76, 1),
(66, 106, 70, 14),
(67, 111, 64, NULL),
(68, 112, 21, 25),
(69, 113, 68, 22),
(70, 115, 55, 4),
(71, 116, 56, 18);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `regisztralt_allasok`
--

DROP TABLE IF EXISTS `regisztralt_allasok`;
CREATE TABLE `regisztralt_allasok` (
  `allas_id` int(11) NOT NULL,
  `diakszovetkezet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `regisztralt_allasok`
--

INSERT INTO `regisztralt_allasok` (`allas_id`, `diakszovetkezet_id`) VALUES
(6, 5),
(10, 5),
(11, 5),
(14, 3),
(22, 1),
(27, 2),
(37, 1),
(45, 5),
(57, 4),
(60, 1),
(64, 4),
(68, 1),
(71, 4),
(75, 1),
(78, 5),
(79, 5),
(85, 2),
(95, 3),
(99, 2),
(100, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemelyes_adatok`
--

DROP TABLE IF EXISTS `szemelyes_adatok`;
CREATE TABLE `szemelyes_adatok` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `szuletesi_datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `szemelyes_adatok`
--

INSERT INTO `szemelyes_adatok` (`id`, `nev`, `szuletesi_datum`) VALUES
(1, 'Váradi Alexander', '1970-04-26 00:00:00'),
(2, 'Kocsis Márk', '1974-12-11 00:00:00'),
(3, 'Király Péter', '1976-08-13 00:00:00'),
(4, 'Takács Gergely', '1977-06-06 00:00:00'),
(5, 'Fekete Dénes', '1979-03-18 00:00:00'),
(6, 'Bogdán Benjamin', '1980-01-16 00:00:00'),
(7, 'Szőke Máté', '1981-07-03 00:00:00'),
(8, 'Szűts Szilveszter', '1982-11-10 00:00:00'),
(9, 'Nemes Benjámin', '1983-01-28 00:00:00'),
(10, 'Balogh Géza', '1984-11-13 00:00:00'),
(11, 'Miksa Barnabás', '1986-01-13 00:00:00'),
(12, 'Papp Adrián', '1987-07-27 00:00:00'),
(13, 'Fekete András', '1993-01-27 00:00:00'),
(14, 'László Bence', '1993-07-29 00:00:00'),
(15, 'Apród Ádám', '1993-08-12 00:00:00'),
(16, 'Faragó Kornél', '1993-11-29 00:00:00'),
(17, 'Szekeres Károly', '1994-07-01 00:00:00'),
(18, 'Sándor Patrik', '1994-11-07 00:00:00'),
(19, 'Szücs Dénes', '1995-02-06 00:00:00'),
(20, 'Váradi Barna', '1996-03-21 00:00:00'),
(21, 'Kende Albert', '1996-09-15 00:00:00'),
(22, 'Mezei Alex', '1997-06-23 00:00:00'),
(23, 'Balogh Adrián', '2000-08-03 00:00:00'),
(24, 'Barna Ádám', '2001-02-08 00:00:00'),
(25, 'Tamás Vilmos', '2001-03-28 00:00:00'),
(26, 'Zobor Benedek', '1972-10-16 00:00:00'),
(27, 'Bálint Máté', '1973-09-29 00:00:00'),
(28, 'Apród Dominik', '1974-09-19 00:00:00'),
(29, 'Fehér Noel', '1975-08-21 00:00:00'),
(30, 'Illés Olivér', '1978-07-10 00:00:00'),
(31, 'Balog Gergely', '1978-08-27 00:00:00'),
(32, 'Fazekas Tibor', '1979-01-19 00:00:00'),
(33, 'Balogh Donát', '1979-11-22 00:00:00'),
(34, 'Veres Milán', '1979-12-14 00:00:00'),
(35, 'Csonka Renátó', '1980-12-28 00:00:00'),
(36, 'Lukács Levente', '1984-07-12 00:00:00'),
(37, 'Bogdán Szilveszter', '1985-02-18 00:00:00'),
(38, 'Dudás Kálmán', '1989-09-22 00:00:00'),
(39, 'Virág Vince', '1991-08-17 00:00:00'),
(40, 'Simon Benjámin', '1992-03-18 00:00:00'),
(41, 'Tamás Szilveszter', '1992-06-28 00:00:00'),
(42, 'Soós István', '1995-02-05 00:00:00'),
(43, 'Papp Benjámin', '1995-08-20 00:00:00'),
(44, 'Szekeres Károly', '1995-11-25 00:00:00'),
(45, 'Orsós Gábor', '1996-04-22 00:00:00'),
(46, 'Halász Ferenc', '1997-09-14 00:00:00'),
(47, 'Szabó Róbert', '1999-03-22 00:00:00'),
(48, 'Vörös Lajos', '1999-12-25 00:00:00'),
(49, 'László Viktor', '2000-05-27 00:00:00'),
(50, 'Sípos Balázs', '2000-06-05 00:00:00'),
(51, 'Csatár Patrícia', '1972-04-16 00:00:00'),
(52, 'Egyed Borbála', '1976-10-29 00:00:00'),
(53, 'Török Erzsébet', '1977-01-07 00:00:00'),
(54, 'László Kitti', '1977-04-13 00:00:00'),
(55, 'Major Laura', '1978-07-31 00:00:00'),
(56, 'Németh Vanda', '1979-10-09 00:00:00'),
(57, 'Bálint Viktória', '1979-11-08 00:00:00'),
(58, 'Király Cintia', '1983-08-26 00:00:00'),
(59, 'Pap Éva', '1983-09-24 00:00:00'),
(60, 'Biró Petra', '1983-10-07 00:00:00'),
(61, 'Szalai Fanni', '1983-12-23 00:00:00'),
(62, 'Balázs Adrienn', '1985-06-09 00:00:00'),
(63, 'Apród Nóra', '1985-08-03 00:00:00'),
(64, 'Kapolcs Anita', '1986-09-18 00:00:00'),
(65, 'Hegedüs Éva', '1988-03-28 00:00:00'),
(66, 'Máté Adél', '1992-05-06 00:00:00'),
(67, 'Magyar Gréta', '1992-08-11 00:00:00'),
(68, 'Székely Ivett', '1994-05-24 00:00:00'),
(69, 'Egyed Judit', '1995-01-15 00:00:00'),
(70, 'Németh Virág', '1995-06-13 00:00:00'),
(71, 'Pap Zita', '1995-09-26 00:00:00'),
(72, 'Fodor Dorottya', '1996-11-07 00:00:00'),
(73, 'Juhász Anna', '1998-11-13 00:00:00'),
(74, 'Székely Bettina', '2000-05-10 00:00:00'),
(75, 'Fekete Petra', '2000-06-10 00:00:00'),
(76, 'Király Zsófia', '1970-08-23 00:00:00'),
(77, 'Jónás Rebeka', '1973-01-07 00:00:00'),
(78, 'Kovács Noémi', '1973-12-30 00:00:00'),
(79, 'Antal Flóra', '1974-12-07 00:00:00'),
(80, 'Barta Veronika', '1975-10-23 00:00:00'),
(81, 'Faragó Petra', '1975-11-09 00:00:00'),
(82, 'Balla Mercédesz', '1976-04-05 00:00:00'),
(83, 'Fülöp Dóra', '1978-04-14 00:00:00'),
(84, 'Török Anna', '1981-10-10 00:00:00'),
(85, 'Pataki Vivien', '1982-06-17 00:00:00'),
(86, 'Szekeres Klaudia', '1983-08-26 00:00:00'),
(87, 'Balázs Lili', '1984-04-15 00:00:00'),
(88, 'Gál Barbara', '1984-08-17 00:00:00'),
(89, 'Fazekas Regina', '1985-04-16 00:00:00'),
(90, 'Orsós Dalma', '1985-04-18 00:00:00'),
(91, 'Antal Zita', '1985-11-24 00:00:00'),
(92, 'Pál Nikolett', '1986-08-23 00:00:00'),
(93, 'Simon Vivien', '1987-05-07 00:00:00'),
(94, 'Szalai Natália', '1989-09-29 00:00:00'),
(95, 'Váradi Evelin', '1992-08-20 00:00:00'),
(96, 'Kerekes Virág', '1994-04-09 00:00:00'),
(97, 'Oláh Réka', '1995-08-31 00:00:00'),
(98, 'Barta Bernadett', '1995-11-04 00:00:00'),
(99, 'Jónás Dorina', '1997-04-14 00:00:00'),
(100, 'Orosz Mária', '1998-04-19 00:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vallalat`
--

DROP TABLE IF EXISTS `vallalat`;
CREATE TABLE `vallalat` (
  `id` int(11) NOT NULL,
  `neve` varchar(50) NOT NULL,
  `tulajdonos` varchar(50) DEFAULT NULL,
  `jegyzett_toke` int(11) DEFAULT NULL,
  `ertekeles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `vallalat`
--

INSERT INTO `vallalat` (`id`, `neve`, `tulajdonos`, `jegyzett_toke`, `ertekeles`) VALUES
(1, 'Digital Intelligence Systems, LLC', 'Chantelle Workman', 664283306, 3),
(2, 'University of Chicago/IT Services', 'Zaine Powers', 376467583, 5),
(3, 'Galaxy Systems, Inc.', 'Kingston Easton', 125007618, 5),
(4, 'TransTech LLC', 'Eddison Fields', 132876152, 0),
(5, 'Matrix Resources', 'Kyal Mora', 340995392, 4),
(6, 'Yash Technologies', 'Evie-Mai Dean', 948377827, 3),
(7, 'Noble1', 'Ameena Arellano', 734234738, 0),
(8, 'Bluebeam Software, Inc.', 'Misbah Brookes', 387060163, 1),
(9, 'Genesis10', 'Amira Dennis', 276888031, 5),
(10, 'VanderHouwen & Associates, Inc.', 'Alena Ahmed', 109582896, 5),
(11, 'Maxonic, Inc.', 'Iona Sutherland', 920635916, 0),
(12, 'CSI (Consultant Specialists Inc.)', 'Mary Tillman', 231829834, 3),
(13, 'Eastridge Workforce Solutions', 'Umayr Duggan', 734650775, 3),
(14, 'Collabera', 'Alayah Stevens', 132932128, 0),
(15, 'Fahrenheit IT Staffing & Consulting', 'Cecilia Hudson', 898213739, 3),
(16, 'Avesta Computer Services', 'Samantha Moody', 650629952, 3),
(17, 'Amazon', 'Calista Head', 361453390, 3),
(18, 'ReqRoute, Inc', 'Willow Bull', 638187944, 2),
(19, 'Turnberry Solutions', 'Lucinda Dawson', 751963708, 0),
(20, 'Alpha Recruitment', 'Eshan Osborne', 690987693, 0),
(21, 'Etouch Systems Corp', 'Emelia Lancaster', 564598055, 3),
(22, 'Centizen', 'Payton Luna', 620070215, 1),
(23, 'Mygo Consulting', 'Cristian Bentley', 24232819, 3),
(24, 'Alpha Consulting Corp.', 'Tyler-Jay Singleton', 819990547, 0),
(25, 'Ascent', 'Ismaeel Pearce', 936106096, 2),
(26, 'Amerit Consulting', 'Meerab Rudd', 216242848, 4),
(27, 'Tellus Solutions', 'Teri Herman', 804244313, 0),
(28, 'Stratitude Inc', 'Carson Henderson', 153775101, 1),
(29, 'Xoriant Corporation', 'Ember Garner', 678025933, 1),
(30, 'iSpace, Inc', 'Mckenzie Huber', 328038583, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vegzettseg`
--

DROP TABLE IF EXISTS `vegzettseg`;
CREATE TABLE `vegzettseg` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `intezmeny` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `vegzettseg`
--

INSERT INTO `vegzettseg` (`id`, `nev`, `intezmeny`) VALUES
(1, 'Egyetem, BSC', 'Bridgeport International Academy'),
(2, 'Technikum', 'Carmel Acadmey'),
(3, 'Egyetem, MSC', 'Country Kids Club'),
(4, 'Egyetem, MSC', 'Eagle Hill School'),
(5, 'Technikum', 'Easton Country Day School'),
(6, 'Egyetem, BSC', 'Fairfield County Sda School'),
(7, 'Szakközépiskola', 'Fraser Woods Montessori School'),
(8, 'Egyetem, BSC', 'Giant Steps Connecticut'),
(9, 'Egyetem, BSC', 'Housatonic Valley Waldorf School'),
(10, 'Gimnázium', 'Landmark Preschool'),
(11, 'Egyetem, BSC', 'Abercorn International School'),
(12, 'Gimnázium', 'Landmark Preschool'),
(13, 'Szakközépiskola', 'Our Lady Of Grace Nursery School & Kindergarten'),
(14, 'Egyetem, BSC', 'Our Lady Star Of The Sea School'),
(15, 'Egyetem, MSC', 'Pierrepont School'),
(16, 'Gimnázium', 'St Catherine Academy'),
(17, 'Egyetem, MSC', 'St Jude School'),
(18, 'Egyetem, BSC', 'St Mary School'),
(19, 'Gimnázium', 'St Theresa School'),
(20, 'Technikum', 'St Vincent\'s Special Needs Services'),
(21, 'Egyetem, MSC', 'The Canaan Ridge School'),
(22, 'Technikum', 'The Greenwich Japanese School'),
(23, 'Egyetem, MSC', 'The Stanwich School'),
(24, 'Egyetem, BSC', 'Trinity Catholic Middle'),
(25, 'Technikum', 'Villa Maria Education Center'),
(26, 'Gimnázium', 'Whitby School'),
(27, 'Egyetem, BSC', 'Wooster School'),
(28, 'Egyetem, MSC', 'Little Wonders Of Baybrook Baptist'),
(29, 'Technikum', 'Llano Christian Academy'),
(30, 'Gimnázium', 'Logos Preparatory School'),
(31, 'Egyetem, MSC', 'Macedonian Christian Academy'),
(32, 'Technikum', 'Mainland Christian Academy Inc.'),
(33, 'Technikum', 'Marble Falls First Baptist Christian School'),
(34, 'Egyetem, BSC', 'Masterpiece Bilingual Academy'),
(35, 'Egyetem, BSC', 'Mesorah High School For Girls'),
(36, 'Egyetem, BSC', 'Midland Classical Academy'),
(37, 'Egyetem, MSC', 'Montessori Country Day School'),
(38, 'Gimnázium', 'Montessori School Of Sugar Land'),
(39, 'Egyetem, BSC', 'Morning Star Academy'),
(40, 'Egyetem, BSC', 'Mosaic Academy'),
(41, 'Technikum', 'All Saints Catholic School'),
(42, 'Gimnázium', 'American School For The Deaf'),
(43, 'Egyetem, BSC', 'Brunswick School'),
(44, 'Technikum', 'Catholic Academy Of Bridgeport/st Raphael Academy'),
(45, 'Szakközépiskola', 'Christian Heritage School'),
(46, 'Egyetem, BSC', 'Christian Life Academy'),
(47, 'Gimnázium', 'Eagle Hill - Southport'),
(48, 'Egyetem, MSC', 'Fairfield College Preparatory'),
(49, 'Egyetem, BSC', 'Fairfield Country Day School'),
(50, 'Egyetem, MSC', 'Great Beginnings Montessori School'),
(51, 'Szakközépiskola', 'Greens Farms Academy'),
(52, 'Gimnázium', 'Greenwich Catholic School'),
(53, 'Gimnázium', 'Hudson Country Montessori School'),
(54, 'Egyetem, MSC', 'Immaculate High School'),
(55, 'Gimnázium', 'Immanuel Lutheran School'),
(56, 'Gimnázium', 'Kolbe Cathedral High School'),
(57, 'Technikum', 'Mooreland Hill School'),
(58, 'Technikum', 'Notre Dame Catholic High School'),
(59, 'Technikum', 'Pear Tree Point School'),
(60, 'Technikum', 'St Andrew Academy'),
(61, 'Technikum', 'St Ann Academy'),
(62, 'Szakközépiskola', 'St Augustine Academy'),
(63, 'Szakközépiskola', 'St Augustine School'),
(64, 'Egyetem, MSC', 'St Catherine Of Siena School'),
(65, 'Egyetem, BSC', 'St Cecilia Elementary School'),
(66, 'Gimnázium', 'St Christopher School'),
(67, 'Egyetem, BSC', 'St Gregory The Great School'),
(68, 'Gimnázium', 'St James School'),
(69, 'Egyetem, BSC', 'St Joseph Elementary School'),
(70, 'Gimnázium', 'St Joseph High School'),
(71, 'Egyetem, MSC', 'St Joseph School'),
(72, 'Technikum', 'St Lawrence Elementary School'),
(73, 'Gimnázium', 'St Mary Elementary School'),
(74, 'Egyetem, BSC', 'St Rose Of Lima School'),
(75, 'Szakközépiskola', 'St Thomas Aquinas Elementary School'),
(76, 'Egyetem, MSC', 'The Children\'s School'),
(77, 'Egyetem, BSC', 'The Long Ridge School'),
(78, 'Egyetem, MSC', 'The Mead School'),
(79, 'Egyetem, BSC', 'The Montessori School'),
(80, 'Szakközépiskola', 'Trinity Catholic High School'),
(81, 'Egyetem, MSC', 'Assumption Early Learning Ce'),
(82, 'Szakközépiskola', 'Avon Old Farms School'),
(83, 'Technikum', 'Ben Bronz Academy'),
(84, 'Szakközépiskola', 'Clinical Day School - Manchester Memorial Hospital'),
(85, 'Gimnázium', 'Community Child Guidance Clinic'),
(86, 'Gimnázium', 'Enfield Montessori School'),
(87, 'Szakközépiskola', 'Ethel Walker School'),
(88, 'Szakközépiskola', 'Gengras Center/univ Of St Joseph'),
(89, 'Egyetem, BSC', 'Hartford Area Sda School'),
(90, 'Egyetem, BSC', 'Hebrew High School Of New England'),
(91, 'Egyetem, MSC', 'Heritage Christian School'),
(92, 'Egyetem, MSC', 'Intensive Education Academy In'),
(93, 'Egyetem, BSC', 'Kingswood-oxford School'),
(94, 'Egyetem, MSC', 'Miss Porter\'s School'),
(95, 'Technikum', 'Montessori School Greater Hartford');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allas`
--
ALTER TABLE `allas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `helyszin_id` (`helyszin_id`),
  ADD KEY `hirdeto_id` (`hirdeto_id`),
  ADD KEY `kapcsolat_id` (`kapcsolat_id`),
  ADD KEY `munkakor_id` (`munkakor_id`);

--
-- A tábla indexei `diakszovetkezet`
--
ALTER TABLE `diakszovetkezet`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `diakszovetkezetnel_van`
--
ALTER TABLE `diakszovetkezetnel_van`
  ADD KEY `diakszovetkezet_id` (`diakszovetkezet_id`),
  ADD KEY `diak_felhasznalo_id` (`diak_felhasznalo_id`);

--
-- A tábla indexei `diak_felhasznalo`
--
ALTER TABLE `diak_felhasznalo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiokadat_id` (`fiokadat_id`),
  ADD KEY `iskola_id` (`iskola_id`),
  ADD KEY `vallalat_id` (`vallalat_id`);

--
-- A tábla indexei `egyeb_feltetelek`
--
ALTER TABLE `egyeb_feltetelek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `fiokadatok`
--
ALTER TABLE `fiokadatok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `szemelyes_adatok_id` (`szemelyes_adatok_id`);

--
-- A tábla indexei `helyszin`
--
ALTER TABLE `helyszin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hirdeto`
--
ALTER TABLE `hirdeto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiokadatok_id` (`fiokadatok_id`),
  ADD KEY `vallalat_id` (`vallalat_id`);

--
-- A tábla indexei `iskola`
--
ALTER TABLE `iskola`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `jelentkezok`
--
ALTER TABLE `jelentkezok`
  ADD KEY `allas_id` (`allas_id`),
  ADD KEY `normal_felhasznalo_id` (`normal_felhasznalo_id`);

--
-- A tábla indexei `kapcsolat`
--
ALTER TABLE `kapcsolat`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `munkakor`
--
ALTER TABLE `munkakor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egyeb_feltetelek_id` (`egyeb_feltetelek_id`);

--
-- A tábla indexei `normal_felhasznalo`
--
ALTER TABLE `normal_felhasznalo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiokadatok_id` (`fiokadatok_id`),
  ADD KEY `vallalat_id` (`vallalat_id`),
  ADD KEY `vegzettseg_id` (`vegzettseg_id`);

--
-- A tábla indexei `regisztralt_allasok`
--
ALTER TABLE `regisztralt_allasok`
  ADD KEY `allas_id` (`allas_id`),
  ADD KEY `diakszovetkezet_id` (`diakszovetkezet_id`);

--
-- A tábla indexei `szemelyes_adatok`
--
ALTER TABLE `szemelyes_adatok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vallalat`
--
ALTER TABLE `vallalat`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vegzettseg`
--
ALTER TABLE `vegzettseg`
  ADD PRIMARY KEY (`id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `allas`
--
ALTER TABLE `allas`
  ADD CONSTRAINT `allas_ibfk_1` FOREIGN KEY (`helyszin_id`) REFERENCES `helyszin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `allas_ibfk_2` FOREIGN KEY (`hirdeto_id`) REFERENCES `hirdeto` (`id`),
  ADD CONSTRAINT `allas_ibfk_3` FOREIGN KEY (`kapcsolat_id`) REFERENCES `kapcsolat` (`ID`),
  ADD CONSTRAINT `allas_ibfk_4` FOREIGN KEY (`munkakor_id`) REFERENCES `munkakor` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Megkötések a táblához `diakszovetkezetnel_van`
--
ALTER TABLE `diakszovetkezetnel_van`
  ADD CONSTRAINT `diakszovetkezetnel_van_ibfk_1` FOREIGN KEY (`diakszovetkezet_id`) REFERENCES `diakszovetkezet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diakszovetkezetnel_van_ibfk_2` FOREIGN KEY (`diak_felhasznalo_id`) REFERENCES `diak_felhasznalo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `diak_felhasznalo`
--
ALTER TABLE `diak_felhasznalo`
  ADD CONSTRAINT `diak_felhasznalo_ibfk_1` FOREIGN KEY (`fiokadat_id`) REFERENCES `fiokadatok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diak_felhasznalo_ibfk_2` FOREIGN KEY (`iskola_id`) REFERENCES `iskola` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `diak_felhasznalo_ibfk_3` FOREIGN KEY (`vallalat_id`) REFERENCES `vallalat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Megkötések a táblához `fiokadatok`
--
ALTER TABLE `fiokadatok`
  ADD CONSTRAINT `fiokadatok_ibfk_1` FOREIGN KEY (`szemelyes_adatok_id`) REFERENCES `szemelyes_adatok` (`id`);

--
-- Megkötések a táblához `hirdeto`
--
ALTER TABLE `hirdeto`
  ADD CONSTRAINT `hirdeto_ibfk_1` FOREIGN KEY (`fiokadatok_id`) REFERENCES `fiokadatok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hirdeto_ibfk_2` FOREIGN KEY (`vallalat_id`) REFERENCES `vallalat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `jelentkezok`
--
ALTER TABLE `jelentkezok`
  ADD CONSTRAINT `jelentkezok_ibfk_1` FOREIGN KEY (`allas_id`) REFERENCES `allas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jelentkezok_ibfk_2` FOREIGN KEY (`normal_felhasznalo_id`) REFERENCES `normal_felhasznalo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `munkakor`
--
ALTER TABLE `munkakor`
  ADD CONSTRAINT `munkakor_ibfk_1` FOREIGN KEY (`egyeb_feltetelek_id`) REFERENCES `egyeb_feltetelek` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Megkötések a táblához `normal_felhasznalo`
--
ALTER TABLE `normal_felhasznalo`
  ADD CONSTRAINT `normal_felhasznalo_ibfk_1` FOREIGN KEY (`fiokadatok_id`) REFERENCES `fiokadatok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `normal_felhasznalo_ibfk_2` FOREIGN KEY (`vallalat_id`) REFERENCES `vallalat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `normal_felhasznalo_ibfk_3` FOREIGN KEY (`vegzettseg_id`) REFERENCES `vegzettseg` (`id`);

--
-- Megkötések a táblához `regisztralt_allasok`
--
ALTER TABLE `regisztralt_allasok`
  ADD CONSTRAINT `regisztralt_allasok_ibfk_1` FOREIGN KEY (`allas_id`) REFERENCES `allas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regisztralt_allasok_ibfk_2` FOREIGN KEY (`diakszovetkezet_id`) REFERENCES `diakszovetkezet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
