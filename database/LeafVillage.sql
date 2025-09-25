--
-- File generated with SQLiteStudio v3.4.17 on Mon Jul 14 10:57:05 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Assignment
DROP TABLE IF EXISTS Assignment;

CREATE TABLE IF NOT EXISTS Assignment (
    AssignmentID INT           PRIMARY KEY,
    OfferingID   INT,
    Title        VARCHAR (100),
    DueDate      DATE,
    StaffID      VARCHAR (10),
    FOREIGN KEY (
        OfferingID
    )
    REFERENCES CourseOffering (OfferingID),
    FOREIGN KEY (
        StaffID
    )
    REFERENCES Staff (StaffID) 
);

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           1,
                           301,
                           'Stage Performance Analysis',
                           '2024-01-15',
                           'ayumi01'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           2,
                           302,
                           'Sound Mixing Project',
                           '2024-01-20',
                           'rashid02'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           3,
                           303,
                           'Art Portfolio Submission',
                           '2024-01-18',
                           'elena03'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           4,
                           304,
                           'UX Redesign Report',
                           '2024-01-22',
                           'tariq04'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           5,
                           305,
                           'Poetry Recital Video',
                           '2024-01-19',
                           'chiara05'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           6,
                           306,
                           'Costume Moodboard',
                           '2024-02-01',
                           'samira06'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           7,
                           307,
                           'Dance Showcase Routine',
                           '2024-02-05',
                           'kenji07'
                       );

INSERT INTO Assignment (
                           AssignmentID,
                           OfferingID,
                           Title,
                           DueDate,
                           StaffID
                       )
                       VALUES (
                           8,
                           308,
                           'Short Film Editing',
                           '2024-02-10',
                           'fatima08'
                       );


-- Table: Campus
DROP TABLE IF EXISTS Campus;

CREATE TABLE IF NOT EXISTS Campus (
    CampusID   INT           PRIMARY KEY,
    CampusName VARCHAR (100) NOT NULL,
    Location   VARCHAR (100) 
);

INSERT INTO Campus (
                       CampusID,
                       CampusName,
                       Location
                   )
                   VALUES (
                       1,
                       'Main Campus',
                       'Leaf Village Central'
                   );

INSERT INTO Campus (
                       CampusID,
                       CampusName,
                       Location
                   )
                   VALUES (
                       2,
                       'Creative Arts Campus',
                       'Leaf Village East'
                   );

INSERT INTO Campus (
                       CampusID,
                       CampusName,
                       Location
                   )
                   VALUES (
                       3,
                       'Performance Campus',
                       'Leaf Village South'
                   );


-- Table: Certificate
DROP TABLE IF EXISTS Certificate;

CREATE TABLE IF NOT EXISTS Certificate (
    CertificateID INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID     INT,
    OfferingID    INT,
    DateIssued    DATE,
    GradeClass    TEXT
);

INSERT INTO Certificate (
                            CertificateID,
                            StudentID,
                            OfferingID,
                            DateIssued,
                            GradeClass
                        )
                        VALUES (
                            1,
                            1,
                            301,
                            '2024-07-01',
                            'Distinction'
                        );

INSERT INTO Certificate (
                            CertificateID,
                            StudentID,
                            OfferingID,
                            DateIssued,
                            GradeClass
                        )
                        VALUES (
                            2,
                            3,
                            303,
                            '2024-07-01',
                            'Merit'
                        );

INSERT INTO Certificate (
                            CertificateID,
                            StudentID,
                            OfferingID,
                            DateIssued,
                            GradeClass
                        )
                        VALUES (
                            3,
                            5,
                            305,
                            '2024-07-01',
                            'Pass'
                        );

INSERT INTO Certificate (
                            CertificateID,
                            StudentID,
                            OfferingID,
                            DateIssued,
                            GradeClass
                        )
                        VALUES (
                            4,
                            7,
                            307,
                            '2024-07-01',
                            'Distinction'
                        );

INSERT INTO Certificate (
                            CertificateID,
                            StudentID,
                            OfferingID,
                            DateIssued,
                            GradeClass
                        )
                        VALUES (
                            6,
                            2,
                            302,
                            '2024-07-10',
                            'Pass'
                        );


-- Table: Class
DROP TABLE IF EXISTS Class;

CREATE TABLE IF NOT EXISTS Class (
    ClassID    INT          PRIMARY KEY,
    ClassName  VARCHAR (50),
    StartDate  DATE,
    EndDate    DATE,
    OfferingID INT,
    StaffID    VARCHAR (10),
    FOREIGN KEY (
        OfferingID
    )
    REFERENCES CourseOffering (OfferingID),
    FOREIGN KEY (
        StaffID
    )
    REFERENCES Staff (StaffID) 
);

INSERT INTO Class (
                      ClassID,
                      ClassName,
                      StartDate,
                      EndDate,
                      OfferingID,
                      StaffID
                  )
                  VALUES (
                      1,
                      'Stagecraft A',
                      '2023-10-10',
                      '2024-06-01',
                      301,
                      'ayumi01'
                  );

INSERT INTO Class (
                      ClassID,
                      ClassName,
                      StartDate,
                      EndDate,
                      OfferingID,
                      StaffID
                  )
                  VALUES (
                      2,
                      'Audio Basics B',
                      '2023-10-12',
                      '2024-06-05',
                      302,
                      'rashid02'
                  );

INSERT INTO Class (
                      ClassID,
                      ClassName,
                      StartDate,
                      EndDate,
                      OfferingID,
                      StaffID
                  )
                  VALUES (
                      3,
                      'Art Studio C',
                      '2023-10-14',
                      '2024-06-08',
                      303,
                      'elena03'
                  );

INSERT INTO Class (
                      ClassID,
                      ClassName,
                      StartDate,
                      EndDate,
                      OfferingID,
                      StaffID
                  )
                  VALUES (
                      4,
                      'UX Sprint D',
                      '2023-10-16',
                      '2024-06-10',
                      304,
                      'tariq04'
                  );

INSERT INTO Class (
                      ClassID,
                      ClassName,
                      StartDate,
                      EndDate,
                      OfferingID,
                      StaffID
                  )
                  VALUES (
                      5,
                      'Poetry Lab E',
                      '2023-10-18',
                      '2024-06-15',
                      305,
                      'chiara05'
                  );


-- Table: ClassEnrollment
DROP TABLE IF EXISTS ClassEnrollment;

CREATE TABLE IF NOT EXISTS ClassEnrollment (
    StudentID INT,
    ClassID   INT,
    PRIMARY KEY (
        StudentID,
        ClassID
    ),
    FOREIGN KEY (
        StudentID
    )
    REFERENCES Student (StudentID),
    FOREIGN KEY (
        ClassID
    )
    REFERENCES Class (ClassID) 
);

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                1,
                                1
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                2,
                                1
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                3,
                                2
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                4,
                                2
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                5,
                                3
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                6,
                                3
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                7,
                                4
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                8,
                                4
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                9,
                                5
                            );

INSERT INTO ClassEnrollment (
                                StudentID,
                                ClassID
                            )
                            VALUES (
                                10,
                                5
                            );


-- Table: Course
DROP TABLE IF EXISTS Course;

CREATE TABLE IF NOT EXISTS Course (
    CourseID     INT           PRIMARY KEY,
    CourseName   VARCHAR (100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (
        DepartmentID
    )
    REFERENCES Department (DepartmentID) 
);

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       201,
                       'Acting & Stagecraft',
                       101
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       202,
                       'Audio Engineering',
                       102
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       203,
                       'Fine Art Techniques',
                       103
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       204,
                       'Web & UX Design',
                       104
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       205,
                       'Poetry & Storytelling',
                       105
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       206,
                       'Fashion Illustration',
                       106
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       207,
                       'Modern Dance Workshop',
                       107
                   );

INSERT INTO Course (
                       CourseID,
                       CourseName,
                       DepartmentID
                   )
                   VALUES (
                       208,
                       'Cinematography Basics',
                       108
                   );


-- Table: CourseOffering
DROP TABLE IF EXISTS CourseOffering;

CREATE TABLE IF NOT EXISTS CourseOffering (
    OfferingID   INT             PRIMARY KEY,
    CourseID     INT,
    AcademicYear VARCHAR (9),
    Fee          DECIMAL (10, 2),
    StartDate    DATE,
    EndDate      DATE,
    StaffID      VARCHAR (10),
    FOREIGN KEY (
        CourseID
    )
    REFERENCES Course (CourseID),
    FOREIGN KEY (
        StaffID
    )
    REFERENCES Staff (StaffID) 
);

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               301,
                               201,
                               '2023/2024',
                               500,
                               '2023-10-01',
                               '2024-06-30',
                               'ayumi01'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               302,
                               202,
                               '2023/2024',
                               600,
                               '2023-10-01',
                               '2024-06-30',
                               'rashid02'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               303,
                               203,
                               '2023/2024',
                               550,
                               '2023-10-01',
                               '2024-06-30',
                               'elena03'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               304,
                               204,
                               '2023/2024',
                               580,
                               '2023-10-01',
                               '2024-06-30',
                               'tariq04'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               305,
                               205,
                               '2023/2024',
                               450,
                               '2023-10-01',
                               '2024-06-30',
                               'chiara05'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               306,
                               206,
                               '2023/2024',
                               480,
                               '2023-10-01',
                               '2024-06-30',
                               'samira06'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               307,
                               207,
                               '2023/2024',
                               620,
                               '2023-10-01',
                               '2024-06-30',
                               'kenji07'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               308,
                               208,
                               '2023/2024',
                               700,
                               '2023-10-01',
                               '2024-06-30',
                               'fatima08'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               311,
                               201,
                               '2025/2026',
                               520,
                               '2025-09-15',
                               '2026-06-15',
                               'ayumi01'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               312,
                               204,
                               '2025/2026',
                               600,
                               '2025-09-15',
                               '2026-06-15',
                               'tariq04'
                           );

INSERT INTO CourseOffering (
                               OfferingID,
                               CourseID,
                               AcademicYear,
                               Fee,
                               StartDate,
                               EndDate,
                               StaffID
                           )
                           VALUES (
                               313,
                               207,
                               '2025/2026',
                               640,
                               '2025-09-15',
                               '2026-06-15',
                               'kenji07'
                           );


-- Table: Department
DROP TABLE IF EXISTS Department;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID   INT           PRIMARY KEY,
    DepartmentName VARCHAR (100) NOT NULL,
    CampusID       INT,
    FOREIGN KEY (
        CampusID
    )
    REFERENCES Campus (CampusID) 
);

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           101,
                           'Performing Arts',
                           1
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           102,
                           'Music & Sound Production',
                           1
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           103,
                           'Visual Arts',
                           1
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           104,
                           'Digital Design',
                           2
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           105,
                           'Creative Writing',
                           2
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           106,
                           'Fashion & Costume Design',
                           2
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           107,
                           'Dance & Choreography',
                           3
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           108,
                           'Photography & Film',
                           3
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           109,
                           'Animation & Multimedia',
                           3
                       );

INSERT INTO Department (
                           DepartmentID,
                           DepartmentName,
                           CampusID
                       )
                       VALUES (
                           110,
                           'Art Therapy & Wellbeing',
                           1
                       );


-- Table: EmergencyContact
DROP TABLE IF EXISTS EmergencyContact;

CREATE TABLE IF NOT EXISTS EmergencyContact (
    ContactID   INT           PRIMARY KEY,
    StudentID   INT,
    ContactType VARCHAR (50),
    Phone       VARCHAR (15),
    Email       VARCHAR (100),
    FOREIGN KEY (
        StudentID
    )
    REFERENCES Student (StudentID) 
);

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 1,
                                 1,
                                 'Mother',
                                 '07400112233',
                                 'fatima.hassan@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 2,
                                 2,
                                 'Father',
                                 '07588993321',
                                 'peter.nielsen@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 3,
                                 3,
                                 'Sister',
                                 '07711992133',
                                 'sana.siddiqui@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 4,
                                 4,
                                 'Uncle',
                                 '07333559900',
                                 'hiroshi.fujimoto@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 5,
                                 5,
                                 'Guardian',
                                 '07445551212',
                                 'lara.campos@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 6,
                                 6,
                                 'Brother',
                                 '07999999999',
                                 'tendai.moyo@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 7,
                                 7,
                                 'Father',
                                 '07522336677',
                                 'marco.moretti@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 8,
                                 8,
                                 'Mother',
                                 '07499887766',
                                 'amina.benali@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 9,
                                 9,
                                 'Aunt',
                                 '07734567912',
                                 'meena.patel@example.com'
                             );

INSERT INTO EmergencyContact (
                                 ContactID,
                                 StudentID,
                                 ContactType,
                                 Phone,
                                 Email
                             )
                             VALUES (
                                 10,
                                 10,
                                 'Guardian',
                                 '07342111001',
                                 'serap.demir@example.com'
                             );


-- Table: Enrollment
DROP TABLE IF EXISTS Enrollment;

CREATE TABLE IF NOT EXISTS Enrollment (
    EnrollmentID INT          PRIMARY KEY,
    StudentID    INT,
    OfferingID   INT,
    Status       VARCHAR (50),
    GradeLevel   VARCHAR (50),
    FOREIGN KEY (
        StudentID
    )
    REFERENCES Student (StudentID),
    FOREIGN KEY (
        OfferingID
    )
    REFERENCES CourseOffering (OfferingID) 
);

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           1,
                           1,
                           301,
                           'Completed',
                           'Beginner'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           2,
                           2,
                           302,
                           'Completed',
                           'Intermediate'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           3,
                           3,
                           303,
                           'Completed',
                           'Advanced'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           4,
                           4,
                           304,
                           'Approved',
                           'Intermediate'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           5,
                           5,
                           305,
                           'Completed',
                           'Beginner'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           6,
                           6,
                           306,
                           'Approved',
                           'Advanced'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           7,
                           7,
                           307,
                           'Completed',
                           'Intermediate'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           8,
                           8,
                           308,
                           'Approved',
                           'Beginner'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           11,
                           1,
                           311,
                           'Approved',
                           'Beginner'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           12,
                           4,
                           312,
                           'Pending',
                           'Intermediate'
                       );

INSERT INTO Enrollment (
                           EnrollmentID,
                           StudentID,
                           OfferingID,
                           Status,
                           GradeLevel
                       )
                       VALUES (
                           13,
                           6,
                           313,
                           'Pending',
                           'Advanced'
                       );


-- Table: Payment
DROP TABLE IF EXISTS Payment;

CREATE TABLE IF NOT EXISTS Payment (
    PaymentID   INT             PRIMARY KEY,
    StudentID   INT,
    Amount      DECIMAL (10, 2),
    PaymentDate DATE,
    FOREIGN KEY (
        StudentID
    )
    REFERENCES Student (StudentID) 
);

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        1,
                        1,
                        100,
                        '2023-10-01'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        2,
                        1,
                        100,
                        '2023-11-01'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        3,
                        2,
                        200,
                        '2023-09-05'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        4,
                        3,
                        150,
                        '2023-10-15'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        5,
                        4,
                        250,
                        '2023-09-20'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        6,
                        4,
                        250,
                        '2023-10-20'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        7,
                        5,
                        200,
                        '2023-11-01'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        8,
                        6,
                        350,
                        '2023-09-25'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        9,
                        7,
                        100,
                        '2023-10-10'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        10,
                        8,
                        100,
                        '2023-11-05'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        11,
                        9,
                        200,
                        '2023-10-18'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        12,
                        10,
                        0,
                        '2023-09-30'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        999,
                        7,
                        400,
                        '2025-07-10'
                    );

INSERT INTO Payment (
                        PaymentID,
                        StudentID,
                        Amount,
                        PaymentDate
                    )
                    VALUES (
                        998,
                        1,
                        250,
                        '2025-07-12'
                    );


-- Table: RoleType
DROP TABLE IF EXISTS RoleType;

CREATE TABLE IF NOT EXISTS RoleType (
    RoleID   INT          PRIMARY KEY,
    RoleName VARCHAR (50)-- Teacher, Support, Management 
);

INSERT INTO RoleType (
                         RoleID,
                         RoleName
                     )
                     VALUES (
                         1,
                         'Instructor'
                     );

INSERT INTO RoleType (
                         RoleID,
                         RoleName
                     )
                     VALUES (
                         2,
                         'Admin'
                     );

INSERT INTO RoleType (
                         RoleID,
                         RoleName
                     )
                     VALUES (
                         3,
                         'Coordinator'
                     );

INSERT INTO RoleType (
                         RoleID,
                         RoleName
                     )
                     VALUES (
                         4,
                         'Counsellor'
                     );

INSERT INTO RoleType (
                         RoleID,
                         RoleName
                     )
                     VALUES (
                         5,
                         'Examiner'
                     );


-- Table: Staff
DROP TABLE IF EXISTS Staff;

CREATE TABLE IF NOT EXISTS Staff (
    StaffID      VARCHAR (10) PRIMARY KEY,
    FirstName    VARCHAR (50),
    LastName     VARCHAR (50),
    DepartmentID INT,
    CampusID     INT,
    FOREIGN KEY (
        DepartmentID
    )
    REFERENCES Department (DepartmentID),
    FOREIGN KEY (
        CampusID
    )
    REFERENCES Campus (CampusID) 
);

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'ayumi01',
                      'Ayumi',
                      'Tanaka',
                      101,
                      1
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'rashid02',
                      'Rashid',
                      'Khan',
                      102,
                      1
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'elena03',
                      'Elena',
                      'Petrova',
                      103,
                      1
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'tariq04',
                      'Tariq',
                      'Abbas',
                      104,
                      2
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'chiara05',
                      'Chiara',
                      'Romano',
                      105,
                      2
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'samira06',
                      'Samira',
                      'Ndiaye',
                      106,
                      2
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'kenji07',
                      'Kenji',
                      'Yamamoto',
                      107,
                      3
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'fatima08',
                      'Fatima',
                      'El-Farsi',
                      108,
                      3
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'lucien09',
                      'Lucien',
                      'Moreau',
                      109,
                      3
                  );

INSERT INTO Staff (
                      StaffID,
                      FirstName,
                      LastName,
                      DepartmentID,
                      CampusID
                  )
                  VALUES (
                      'dalia10',
                      'Dalia',
                      'Fernandes',
                      110,
                      1
                  );


-- Table: StaffRole
DROP TABLE IF EXISTS StaffRole;

CREATE TABLE IF NOT EXISTS StaffRole (
    StaffID VARCHAR (10),
    RoleID  INT,
    PRIMARY KEY (
        StaffID,
        RoleID
    ),
    FOREIGN KEY (
        StaffID
    )
    REFERENCES Staff (StaffID),
    FOREIGN KEY (
        RoleID
    )
    REFERENCES RoleType (RoleID) 
);

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'ayumi01',
                          1
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'rashid02',
                          1
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'elena03',
                          2
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'tariq04',
                          3
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'chiara05',
                          1
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'samira06',
                          4
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'kenji07',
                          1
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'fatima08',
                          5
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'lucien09',
                          1
                      );

INSERT INTO StaffRole (
                          StaffID,
                          RoleID
                      )
                      VALUES (
                          'dalia10',
                          2
                      );


-- Table: Student
DROP TABLE IF EXISTS Student;

CREATE TABLE IF NOT EXISTS Student (
    StudentID       INT             PRIMARY KEY,
    FirstName       VARCHAR (50),
    LastName        VARCHAR (50),
    DOB             DATE,
    Email           VARCHAR (100)   UNIQUE,
    City            VARCHAR (100),
    EnrollmentDate  DATE,
    OutstandingFees DECIMAL (10, 2) 
);

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        1,
                        'Zainab',
                        'Hassan',
                        '2005-04-18',
                        'zainab.hassan@leaf.com',
                        'Manchester',
                        '2023-09-01',
                        200
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        2,
                        'Mikkel',
                        'Nielsen',
                        '2004-11-02',
                        'mikkel.nielsen@leaf.com',
                        'Copenhagen',
                        '2023-09-03',
                        0
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        3,
                        'Arooj',
                        'Siddiqui',
                        '2006-06-25',
                        'arooj.siddiqui@leaf.com',
                        'Manchester',
                        '2023-09-05',
                        150
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        4,
                        'Kaito',
                        'Fujimoto',
                        '2005-02-14',
                        'kaito.fujimoto@leaf.com',
                        'Osaka',
                        '2023-09-02',
                        500
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        5,
                        'Nyla',
                        'Campos',
                        '2005-09-10',
                        'nyla.campos@leaf.com',
                        'Lisbon',
                        '2023-09-06',
                        0
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        6,
                        'Tariro',
                        'Moyo',
                        '2004-08-08',
                        'tariro.moyo@leaf.com',
                        'Bradford',
                        '2023-09-04',
                        350
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        7,
                        'Luca',
                        'Moretti',
                        '2005-12-22',
                        'luca.moretti@leaf.com',
                        'Rome',
                        '2023-09-07',
                        0
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        8,
                        'Yasmine',
                        'Benali',
                        '2006-01-15',
                        'yasmine.benali@leaf.com',
                        'Casablanca',
                        '2023-09-08',
                        100
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        9,
                        'Kiran',
                        'Patel',
                        '2005-03-30',
                        'kiran.patel@leaf.com',
                        'Bradford',
                        '2023-09-09',
                        400
                    );

INSERT INTO Student (
                        StudentID,
                        FirstName,
                        LastName,
                        DOB,
                        Email,
                        City,
                        EnrollmentDate,
                        OutstandingFees
                    )
                    VALUES (
                        10,
                        'Adam',
                        'Khan',
                        '2005-07-19',
                        'elif.demir@leaf.com',
                        'Istanbul',
                        '2024-01-10',
                        0
                    );


-- Table: StudentSubmission
DROP TABLE IF EXISTS StudentSubmission;

CREATE TABLE IF NOT EXISTS StudentSubmission (
    AssignmentID INT,
    StudentID    INT,
    PRIMARY KEY (
        AssignmentID,
        StudentID
    ),
    FOREIGN KEY (
        AssignmentID
    )
    REFERENCES Assignment (AssignmentID),
    FOREIGN KEY (
        StudentID
    )
    REFERENCES Student (StudentID) 
);

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  1,
                                  1
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  2,
                                  2
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  3,
                                  3
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  4,
                                  4
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  5,
                                  5
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  6,
                                  6
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  7,
                                  7
                              );

INSERT INTO StudentSubmission (
                                  AssignmentID,
                                  StudentID
                              )
                              VALUES (
                                  8,
                                  8
                              );


-- Index: idx_unique_enrollment
DROP INDEX IF EXISTS idx_unique_enrollment;

CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_enrollment ON Enrollment (
    StudentID,
    OfferingID
);


-- View: PendingStudents
DROP VIEW IF EXISTS PendingStudents;
CREATE VIEW IF NOT EXISTS PendingStudents AS
    SELECT s.StudentID,
           s.FirstName || ' ' || s.LastName AS FullName,
           s.City,
           e.OfferingID,
           e.Status
      FROM Enrollment e
           JOIN
           Student s ON e.StudentID = s.StudentID
     WHERE e.Status = 'Pending';


-- Trigger: auto_complete_enrollment
DROP TRIGGER IF EXISTS auto_complete_enrollment;
CREATE TRIGGER IF NOT EXISTS auto_complete_enrollment
                       AFTER INSERT
                          ON Certificate
BEGIN
    UPDATE Enrollment
       SET Status = 'Completed'
     WHERE StudentID = NEW.StudentID AND
           OfferingID = NEW.OfferingID AND
           Status = 'Approved';
END;


-- Trigger: auto_payment_status
DROP TRIGGER IF EXISTS auto_payment_status;
CREATE TRIGGER IF NOT EXISTS auto_payment_status
                       AFTER INSERT
                          ON Payment
BEGIN
    UPDATE Enrollment
       SET Status = 'Approved'
     WHERE StudentID = NEW.StudentID AND
           Status = 'Pending';
END;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
