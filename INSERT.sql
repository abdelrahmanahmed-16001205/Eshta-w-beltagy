USE HRMS;
GO
INSERT INTO Position (position_title, responsibilities, status) VALUES
('Chief Executive Officer','Oversees the company''s long-term direction and major decisions.','Active'),
('Chief Technology Officer','Guides all technical strategy and architectural decisions.','Active'),
('HR Manager','Responsible for HR planning, staffing, and internal policies.','Active'),
('Software Engineer','Handles software creation, improvement, and maintenance tasks.','Active'),
('Senior Developer','Leads projects and mentors junior technical team members.','Active'),
('Junior Developer','Supports development activities and learns engineering standards.','Active'),
('System Administrator','Maintains servers, network equipment, and IT infrastructure.','Active'),
('Payroll Specialist','Manages payroll cycles, compensation calculations, and tax filings.','Active'),
('HR Administrator','Executes daily HR functions and handles employee records.','Active'),
('Line Manager','Supervises assigned teams and enforces operational processes.','Active'),
('Consultant','Provides specialized advisory services on assigned topics.','Active'),
('Intern','Participates in training and assists teams with entry-level work.','Active');
INSERT INTO PayGrade (grade_name, min_salary, max_salary) VALUES
('Entry Level',30000.00,50000.00),
('Junior',50000.00,75000.00),
('Mid Level',75000.00,100000.00),
('Senior',100000.00,150000.00),
('Lead',150000.00,200000.00),
('Executive',200000.00,500000.00);
INSERT INTO TaxForm (jurisdiction, validity_period, form_content) VALUES
('Federal','2025-01-01 to 2025-12-31','Guidelines for federal tax withholding and reporting.'),
('California State','2025-01-01 to 2025-12-31','Applicable state-level payroll and tax standards.'),
('European Union','2025-01-01 to 2025-12-31','EU-wide taxation compliance and reporting criteria.'),
('Egypt','2025-01-01 to 2025-12-31','Regulatory directives issued by the Egyptian Tax Authority.');
INSERT INTO Department (department_name, purpose, department_head_id) VALUES
('Executive','Provides overall strategic leadership.',NULL),
('Human Resources','Handles personnel development, policies, and welfare.',NULL),
('Engineering','Responsible for software engineering and innovation.',NULL),
('Finance','Manages budgets, accounting, and financial planning.',NULL),
('Operations','Ensures smooth day-to-day business execution.',NULL),
('IT','Supports technology systems and technical operations.',NULL);
INSERT INTO Currency (CurrencyCode, CurrencyName, ExchangeRate, CreatedDate, LastUpdated) VALUES
('USD','US Dollar',1.0000,GETDATE(),GETDATE()),
('EUR','Euro',0.9200,GETDATE(),GETDATE()),
('GBP','British Pound',0.7900,GETDATE(),GETDATE()),
('EGP','Egyptian Pound',30.9000,GETDATE(),GETDATE()),
('AED','UAE Dirham',3.6700,GETDATE(),GETDATE());
INSERT INTO SalaryType (type, payment_frequency, currency) VALUES
('Monthly','Monthly','USD'),
('Hourly','Bi-Weekly','USD'),
('Contract','Milestone-Based','USD'),
('Monthly','Monthly','EUR'),
('Hourly','Weekly','GBP');
INSERT INTO Insurance (type, contribution_rate, coverage) VALUES
('Health Insurance',5.50,'Covers medical treatment, hospitalization, and general health services.'),
('Life Insurance',2.00,'Life protection plan with coverage equivalent to five times annual base salary.'),
('Accident Coverage',1.50,'Provides protection for workplace incidents and commute-related injuries.'),
('Dental Insurance',1.00,'Dental care including preventive and orthodontic treatments.'),
('Vision Insurance',0.75,'Supports optical examinations and corrective eyewear.');

INSERT INTO Contract (type, start_date, end_date, current_state, insurance_id) VALUES
('Full-Time','2024-01-15',NULL,'Active',1),
('Full-Time','2024-03-01',NULL,'Active',1),
('Full-Time','2024-02-10',NULL,'Active',1),
('Part-Time','2024-06-01','2025-06-01','Active',NULL),
('Consultant','2024-09-01','2025-03-01','Active',NULL),
('Internship','2024-07-01','2024-12-31','Active',NULL),
('Full-Time','2023-01-01',NULL,'Active',1),
('Full-Time','2023-06-15',NULL,'Active',1),
('Full-Time','2024-04-20',NULL,'Active',1),
('Part-Time','2024-08-01','2025-08-01','Active',NULL);

INSERT INTO FullTimeContract (contract_id, leave_entitlement, insurance_eligibility, weekly_working_hours) VALUES
(1,30,'Eligible for full medical and life coverage packages.',40),
(2,25,'Eligible for full medical and life coverage packages.',40),
(3,30,'Eligible for full medical and life coverage packages.',40),
(7,30,'Eligible for all standard insurance options.',40),
(8,28,'Eligible for all standard insurance options.',40),
(9,30,'Full coverage included with employment.',40);

INSERT INTO PartTimeContract (contract_id, working_hours, hourly_rate) VALUES
(4,80,25.00),
(10,100,28.00);

INSERT INTO ConsultantContract (contract_id, project_scope, fees, payment_schedule) VALUES
(5,'Consultancy work focused on ERP deployment and team training.',100000.00,'Quarterly distribution at 25% per milestone.');

INSERT INTO InternshipContract (contract_id, mentoring, evaluation, stipend_related) VALUES
(6,'Mentorship under senior engineering staff.','Evaluated monthly with structured performance notes.',800.00);

INSERT INTO Employee (
first_name,last_name,national_id,date_of_birth,country_of_birth,phone,email,address,
emergency_contact_name,emergency_contact_phone,relationship,biography,profile_image,
employment_progress,account_status,employment_status,hire_date,is_active,profile_completion,
department_id,position_id,manager_id,contract_id,tax_form_id,salary_type_id,pay_grade
) VALUES
('John','Anderson','N001','1975-05-15','USA','+1-555-0101','john.anderson@company.com',
'123 Executive St','Mary Anderson','+1-555-0102','Spouse',
'Senior executive with broad leadership background.','/profiles/john_anderson.jpg',
'Completed','Active','Full-Time','2023-01-01',1,100,1,1,NULL,7,1,1,6),
('Sarah','Mitchell','N002','1985-08-20','USA','+1-555-0201','sarah.mitchell@company.com',
'456 HR Avenue','David Mitchell','+1-555-0202','Spouse',
'HR specialist with a decade of professional experience.','/profiles/sarah_mitchell.jpg',
'Completed','Active','Full-Time','2023-06-15',1,100,2,3,1,8,1,1,5),
('Michael','Chen','N003','1990-03-12','USA','+1-555-0301','michael.chen@company.com',
'789 Tech Drive','Linda Chen','+1-555-0302','Mother',
'Expert in systems operations and enterprise infrastructure.','/profiles/michael_chen.jpg',
'Completed','Active','Full-Time','2024-01-15',1,100,6,7,2,1,1,1,4),
('Emily','Rodriguez','N004','1988-11-05','USA','+1-555-0401','emily.rodriguez@company.com',
'321 Finance Blvd','Carlos Rodriguez','+1-555-0402','Spouse',
'Certified payroll analyst experienced with multi-region cycles.','/profiles/emily_rodriguez.jpg',
'Completed','Active','Full-Time','2024-03-01',1,100,4,8,2,2,1,1,4),
('David','Thompson','N005','1987-07-18','USA','+1-555-0501','david.thompson@company.com',
'654 Manager Lane','Susan Thompson','+1-555-0502','Spouse',
'Engineering manager overseeing product delivery and teams.','/profiles/david_thompson.jpg',
'Completed','Active','Full-Time','2024-02-10',1,100,3,5,1,3,1,1,5),
('Jennifer','Lee','N006','1992-09-25','USA','+1-555-0601','jennifer.lee@company.com',
'987 Developer Way','Robert Lee','+1-555-0602','Father',
'Senior engineer working on scalable systems.','/profiles/jennifer_lee.jpg',
'In Progress','Active','Full-Time','2024-04-20',1,85,3,5,5,9,1,1,4),
('Robert','Williams','N007','1995-01-30','USA','+1-555-0701','robert.williams@company.com',
'147 Code Street','Patricia Williams','+1-555-0702','Mother',
'Junior developer building foundational engineering skills.','/profiles/robert_williams.jpg',
'In Progress','Active','Part-Time','2024-06-01',1,70,3,6,5,4,1,2,2),
('Amanda','Taylor','N008','1983-12-08','USA','+1-555-0801','amanda.taylor@company.com',
'258 Consultant Plaza','James Taylor','+1-555-0802','Spouse',
'Consultant specializing in ERP and digital transformation.','/profiles/amanda_taylor.jpg',
'Completed','Active','Contract','2024-09-01',1,100,5,11,NULL,5,1,3,5),
('Christopher','Brown','N009','2001-04-22','USA','+1-555-0901','christopher.brown@company.com',
'369 Intern Road','Elizabeth Brown','+1-555-0902','Mother',
'Motivated intern completing hands-on technical training.','/profiles/christopher_brown.jpg',
'In Progress','Active','Intern','2024-07-01',1,60,3,12,6,6,1,1,1),
('Jessica','Garcia','N010','1991-06-14','USA','+1-555-1001','jessica.garcia@company.com',
'741 HR Support St','Miguel Garcia','+1-555-1002','Spouse',
'HR operations professional supporting organizational processes.','/profiles/jessica_garcia.jpg',
'Completed','Active','Full-Time','2024-08-01',1,95,2,9,2,1,1,1,3);

UPDATE Department SET department_head_id=1 WHERE department_id=1;
UPDATE Department SET department_head_id=2 WHERE department_id=2;
UPDATE Department SET department_head_id=5 WHERE department_id=3;
UPDATE Department SET department_head_id=4 WHERE department_id=4;

INSERT INTO HRAdministrator (employee_id, approval_level, record_access_scope, document_validation_rights) VALUES
(2,'High','Access to all employee records including confidential files.','Authorized to validate onboarding and compliance documents.'),
(10,'Medium','Access to HR operations and hiring documentation.','Can validate leave and reimbursement documentation.');

INSERT INTO SystemAdministrator (employee_id, system_privilege_level, configurable_fields, audit_visibility_scope) VALUES
(3,'Root','Can configure system parameters, authentication, and integrations.','Has visibility over all system logs.'),
(6,'Admin','Can configure user permissions and access roles.','Can view security and usage audit logs.');

INSERT INTO PayrollSpecialist (employee_id, assigned_region, processing_frequency, last_processed_period) VALUES
(4,'North America','Monthly','2025-01'),
(10,'Global','Bi-Weekly','2025-01-W2');

INSERT INTO LineManager (employee_id, team_size, supervised_departments, approval_limit) VALUES
(5,12,'Engineering, IT','Up to $15,000'),
(2,5,'Human Resources','Up to $7,500');

INSERT INTO Skill (skill_name, description) VALUES
('Leadership','Ability to guide teams and manage organizational decisions.'),
('Strategic Planning','Creating long-term business and operational plans.'),
('Software Engineering','Developing, maintaining, and optimizing software.'),
('System Administration','Managing networks, servers, and infrastructure.'),
('Payroll Processing','Managing employee payments and tax deductions.'),
('Communication','Effective verbal and written communication.'),
('Problem Solving','Ability to resolve issues creatively and quickly.'),
('Project Management','Coordinating projects and managing deliverables.'),
('Analytical Thinking','Breaking down problems and analyzing data.'),
('Team Collaboration','Working effectively in teams across departments.');

INSERT INTO Employee_Skill (employee_id, skill_id, proficiency_level) VALUES
(1,1,'Expert'),
(1,2,'Expert'),
(2,6,'Advanced'),
(2,7,'Advanced'),
(3,4,'Expert'),
(4,5,'Advanced'),
(5,1,'Advanced'),
(5,8,'Advanced'),
(6,3,'Advanced'),
(7,3,'Intermediate'),
(8,9,'Advanced'),
(9,10,'Intermediate'),
(10,6,'Advanced');
INSERT INTO Verification (verification_type, issuer, issue_date, expiry_period) VALUES
('Background Check','Federal Agency','2024-01-01','2026-01-01'),
('Education Verification','University Authority','2023-06-01','2028-06-01'),
('Identity Verification','Government Registry','2024-02-15','2034-02-15'),
('Work Eligibility','Immigration Office','2024-03-10','2029-03-10'),
('Security Clearance','National Security Office','2024-04-20','2027-04-20');

INSERT INTO Employee_Verification (employee_id, verification_id) VALUES
(1,1),
(1,5),
(2,2),
(2,3),
(3,1),
(3,3),
(4,1),
(4,4),
(5,1),
(6,3),
(7,3),
(8,2),
(9,2),
(10,3);

INSERT INTO Role (role_name, purpose) VALUES
('Executive','Responsible for top-level company decisions.'),
('Manager','Oversees teams and department operations.'),
('HR Staff','Handles HR processes and employee support.'),
('System Admin','Manages IT infrastructure and systems.'),
('Payroll Officer','Manages payroll cycles and compliance.'),
('Engineer','Develops and maintains software systems.'),
('Intern','Supports teams with supervised tasks.');

INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(1,1,GETDATE()),
(2,3,GETDATE()),
(3,4,GETDATE()),
(4,5,GETDATE()),
(5,2,GETDATE()),
(6,6,GETDATE()),
(7,6,GETDATE()),
(8,2,GETDATE()),
(9,7,GETDATE()),
(10,3,GETDATE());

INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(1,'Approve Budget','Full Approval'),
(1,'Modify System Settings','Full Access'),
(2,'Approve Team Requests','Conditional Approval'),
(3,'Manage Employee Files','Restricted Access'),
(4,'Modify Server Configurations','Full Access'),
(4,'View Security Logs','Read Only'),
(5,'Process Payroll','Full Access'),
(6,'Push Code','Restricted Access'),
(7,'Submit Tasks','Basic Access');

INSERT INTO Termination (date, reason, contract_id) VALUES
('2024-12-15','End of consultant contract (planned).',5),
('2024-12-31','Intern contract concluded after program end.',6);
INSERT INTO Reimbursement (type, claim_type, approval_date, current_status, employee_id) VALUES
('Travel','Flight Ticket','2024-04-12','Approved',3),
('Training','Course Fee','2024-05-02','Pending',2),
('Supplies','Office Items','2024-06-15','Approved',4),
('Travel','Hotel Stay','2024-07-03','Rejected',5),
('Medical','Clinic Visit','2024-08-22','Approved',10);

INSERT INTO Mission (destination, start_date, end_date, status, employee_id, manager_id) VALUES
('New York','2024-03-10','2024-03-14','Completed',3,5),
('Chicago','2024-04-05','2024-04-08','Completed',4,5),
('Seattle','2024-05-18','2024-05-22','Active',6,5),
('Houston','2024-06-01','2024-06-05','Completed',2,1),
('San Diego','2024-07-10','2024-07-14','Planned',1,5);

INSERT INTO Leave (leave_type, leave_description) VALUES
('Vacation Leave','Leave taken for personal vacation or rest.'),
('Sick Leave','Leave taken due to medical illness.'),
('Probation Leave','Leave for employees during probation.'),
('Holiday Leave','Official organizational holidays.');

INSERT INTO VacationLeave (leave_id, carry_over_days, approving_manager) VALUES
(1,10,'David Thompson'),
(1,5,'John Anderson');

INSERT INTO SickLeave (leave_id, medical_cert_required, physician_id) VALUES
(2,1,'DR-8901'),
(2,0,'CLINIC-101');

INSERT INTO ProbationLeave (leave_id, eligibility_start_date, probation_period) VALUES
(3,'2024-01-01',90);

INSERT INTO HolidayLeave (leave_id, holiday_name, official_recognition, regional_scope) VALUES
(4,'Independence Day',1,'National'),
(4,'Thanksgiving',1,'National'),
(4,'Founders Day',0,'Regional');

INSERT INTO LeavePolicy (name, purpose, eligibility_rules, notice_period, special_leave_type, reset_on_new_year, leave_type_id) VALUES
('Standard Vacation Policy','Defines rules for annual vacation leave.','Available to full-time staff after probation.',14,NULL,1,1),
('Sick Leave Policy','Outlines medical leave procedures.','Doctor note required after 2 days.',0,NULL,0,2),
('Probation Leave Policy','Rules for probation period leave.','Only during first 3 months.',3,'Probation',0,3),
('Holiday Leave Policy','Official holidays.','Applies to all employees.',0,'Holiday',1,4);

INSERT INTO LeaveRequest (employee_id, leave_id, justification, duration, approval_timing, status) VALUES
(2,1,'Family vacation to the coast.',5,'2024-04-01 10:30:00','Approved'),
(3,2,'Medical rest required.',2,'2024-02-15 09:00:00','Approved'),
(6,1,'Annual rest leave.',3,'2024-05-22 11:15:00','Pending'),
(7,3,'Probation leave request.',1,NULL,'Pending'),
(10,2,'Severe migraine.',1,'2024-08-22 14:00:00','Approved');

INSERT INTO LeaveEntitlement (employee_id, leave_type_id, entitlement) VALUES
(1,1,18.0),
(2,1,15.0),
(3,1,12.0),
(4,2,10.0),
(5,1,20.0),
(6,1,10.0),
(7,3,5.0),
(10,2,8.0);

INSERT INTO LeaveDocument (leave_request_id, file_path) VALUES
(1,'/leave_docs/req_001_vacation.pdf'),
(2,'/leave_docs/req_002_medical_report.jpg'),
(3,'/leave_docs/req_003_travel_plan.pdf'),
(5,'/leave_docs/req_005_medical_note.pdf');
INSERT INTO ShiftSchedule (name, type, start_time, end_time, break_duration, shift_date, status) VALUES
('Morning Shift','Regular','08:00:00','16:00:00',60,NULL,'Active'),
('Evening Shift','Regular','16:00:00','00:00:00',45,NULL,'Active'),
('Night Shift','Overnight','00:00:00','08:00:00',60,NULL,'Active'),
('Core Hours','Flexible','09:00:00','17:00:00',45,NULL,'Active'),
('Split Shift','Split','08:00:00','20:00:00',120,NULL,'Active');

INSERT INTO Exception (name, category, date, status) VALUES
('New Year''s Day','Holiday','2025-01-01','Active'),
('Labor Day','Holiday','2025-05-01','Active'),
('System Upgrade','System','2025-06-20','Scheduled'),
('Office Renovation','Special','2025-09-15','Planned');

INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, end_date, status, exception_id) VALUES
(3,1,'2024-01-15',NULL,'Active',NULL),
(4,1,'2024-03-01',NULL,'Active',NULL),
(5,4,'2024-02-10',NULL,'Active',NULL),
(6,1,'2024-04-20',NULL,'Active',NULL),
(7,2,'2024-06-01','2025-06-01','Active',NULL),
(9,1,'2024-07-01','2024-12-31','Completed',NULL),
(10,1,'2024-08-01',NULL,'Active',NULL);

INSERT INTO Employee_Exception (employee_id, exception_id) VALUES
(1,1),
(2,1),
(3,2),
(5,3),
(6,3),
(7,4);

INSERT INTO Attendance (employee_id, shift_id, entry_time, exit_time, duration, login_method, logout_method, exception_id) VALUES
(3,1,'2025-11-20 08:05:00','2025-11-20 16:00:00',475,'Biometric','Biometric',NULL),
(4,1,'2025-11-20 07:55:00','2025-11-20 16:05:00',490,'ID Card','ID Card',NULL),
(5,4,'2025-11-20 09:20:00','2025-11-20 17:30:00',490,'Mobile','Mobile',NULL),
(6,1,'2025-11-20 08:10:00','2025-11-20 16:00:00',470,'Biometric','Biometric',NULL),
(10,1,'2025-11-20 07:50:00','2025-11-20 16:00:00',490,'ID Card','ID Card',NULL),
(3,1,'2025-11-21 08:00:00','2025-11-21 16:03:00',483,'Biometric','Biometric',NULL),
(4,1,'2025-11-21 08:18:00','2025-11-21 16:00:00',462,'ID Card','ID Card',NULL),
(6,1,'2025-11-21 08:00:00',NULL,NULL,'Biometric',NULL,NULL);

INSERT INTO AttendanceLog (attendance_id, actor, timestamp, reason) VALUES
(6,5,'2025-11-21 09:00:00','Approved late arrival due to traffic'),
(7,5,'2025-11-21 17:00:00','Corrected missing clock-out time');

INSERT INTO AttendanceCorrectionRequest (employee_id, date, correction_type, reason, status, recorded_by, attendance_id) VALUES
(6,'2025-11-21','Missed Clock Out','Forgot to clock out at 16:00.','Pending',6,7),
(4,'2025-11-21','Late Arrival','Accident caused traffic delay.','Approved',4,6);

INSERT INTO Device (device_type, terminal_id, latitude, longitude, employee_id) VALUES
('Biometric Terminal','BIO-001',30.0444,31.2357,NULL),
('Biometric Terminal','BIO-002',30.0450,31.2360,NULL),
('Mobile App','APP-100',NULL,NULL,5),
('Web Portal','WEB-PORTAL-1',NULL,NULL,NULL);
INSERT INTO AttendanceSource (attendance_id, device_id, source_type, latitude, longitude, recorded_at) VALUES
(1,1,'Biometric',30.0444,31.2357,'2025-11-20 08:05:00'),
(2,2,'Biometric',30.0450,31.2360,'2025-11-20 07:55:00'),
(3,3,'Mobile',30.0500,31.2400,'2025-11-20 09:20:00'),
(4,1,'Biometric',30.0444,31.2357,'2025-11-20 08:10:00');

INSERT INTO ShiftCycle (cycle_name, description) VALUES
('Weekly Rotation','Employees rotate between morning, evening, and night shifts weekly'),
('Two-Week Rotation','Bi-weekly alternating shift pattern'),
('Monthly Rotation','Monthly shift rotation');

INSERT INTO ShiftCycleAssignment (cycle_id, shift_id, order_number) VALUES
(1,1,1),
(1,2,2),
(1,3,3),
(2,1,1),
(2,4,2),
(3,2,1),
(3,3,2);

INSERT INTO Payroll (employee_id, taxes, period_start, period_end, base_amount, adjustments, contributions, actual_pay, net_salary, payment_date) VALUES
(1,15000.00,'2025-10-01','2025-10-31',120000.00,4500.00,8200.00,124500.00,101300.00,'2025-11-05'),
(2,6000.00,'2025-10-01','2025-10-31',50000.00,1800.00,3400.00,51800.00,42800.00,'2025-11-05'),
(3,5200.00,'2025-10-01','2025-10-31',45000.00,1200.00,3100.00,46200.00,38000.00,'2025-11-05'),
(4,5100.00,'2025-10-01','2025-10-31',44000.00,0.00,3000.00,44000.00,35900.00,'2025-11-05'),
(5,7500.00,'2025-10-01','2025-10-31',60000.00,2800.00,4200.00,62800.00,51300.00,'2025-11-05'),
(6,5900.00,'2025-10-01','2025-10-31',50000.00,900.00,3500.00,50900.00,41500.00,'2025-11-05'),
(10,4400.00,'2025-10-01','2025-10-31',40000.00,450.00,2800.00,40450.00,33250.00,'2025-11-05');

INSERT INTO HourlySalaryType (salary_type_id, hourly_rate, max_monthly_hours) VALUES
(2,24.00,160),
(5,32.00,160);

INSERT INTO MonthlySalaryType (salary_type_id, tax_rule, contribution_scheme) VALUES
(1,'Standard US Tax (15%)','Social Security 6.2%, Medicare 1.45%'),
(4,'EU Tax Directive (20%)','Pension 5%, Health 3%');

INSERT INTO ContractSalaryType (salary_type_id, contract_value, installment_details) VALUES
(3,100000.00,'Paid quarterly in equal installments');

INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency, duration, timezone) VALUES
(1,1,'Executive Bonus',4800.00,'USD','One-Time','EST'),
(2,2,'Transport Allowance',450.00,'USD','Monthly','EST'),
(2,2,'Housing Allowance',1500.00,'USD','Monthly','EST'),
(3,3,'Tech Allowance',1400.00,'USD','Monthly','EST'),
(4,4,'Development Fund',700.00,'USD','Quarterly','EST'),
(5,5,'Leadership Bonus',2800.00,'USD','Quarterly','EST'),
(6,6,'Performance Bonus',1000.00,'USD','Monthly','EST'),
(7,10,'Meal Allowance',300.00,'USD','Monthly','EST'),
(1,1,'Health Insurance',-1200.00,'USD','Monthly','EST'),
(2,2,'Parking Fee',-150.00,'USD','Monthly','EST');

INSERT INTO PayrollPolicy (effective_date, type, description) VALUES
('2025-01-01','Overtime','Rules governing overtime rates and limits'),
('2025-01-01','Lateness','Deduction rules for late arrivals'),
('2025-01-01','Bonus','Performance bonus eligibility'),
('2025-01-01','Deduction','Standard deduction policies');

INSERT INTO OvertimePolicy (policy_id, weekday_rate_multiplier, weekend_rate_multiplier, max_hours_per_month) VALUES
(1,1.50,2.00,40);

INSERT INTO LatenessPolicy (policy_id, grace_period_mins, deduction_rate) VALUES
(2,10,25.00);

INSERT INTO BonusPolicy (policy_id, bonus_type, eligibility_criteria) VALUES
(3,'Performance-Based','Min. 6 months service and ≥ 90% attendance');

INSERT INTO DeductionPolicy (policy_id, deduction_reason, calculation_mode) VALUES
(4,'Unpaid Leave','Daily Rate = Base Salary / 30');

INSERT INTO PayrollPolicy_ID (payroll_id, policy_id) VALUES
(1,1),(1,3),
(2,1),
(3,1),
(4,2),
(5,1),(5,3);

INSERT INTO Payroll_Log (payroll_id, actor, change_date, modification_type) VALUES
(1,4,'2025-11-05 09:45:00','Bonus Added'),
(2,4,'2025-11-05 10:15:00','Transport Allowance Updated'),
(4,4,'2025-11-06 14:30:00','Lateness Deduction Applied');

INSERT INTO PayrollPeriod (payroll_id, start_date, end_date, status) VALUES
(1,'2025-10-01','2025-10-31','Completed'),
(2,'2025-10-01','2025-10-31','Completed'),
(3,'2025-10-01','2025-10-31','Completed'),
(4,'2025-10-01','2025-10-31','Completed'),
(5,'2025-10-01','2025-10-31','Completed'),
(6,'2025-10-01','2025-10-31','Completed'),
(7,'2025-10-01','2025-10-31','Completed');

INSERT INTO Notification (message_content, timestamp, urgency, read_status, notification_type) VALUES
('Your leave request has been approved','2025-11-20 09:00:00','Normal',0,'Leave'),
('Payroll for October has been processed','2025-11-05 08:00:00','Normal',1,'Payroll'),
('System maintenance scheduled for November 30','2025-11-15 10:00:00','High',0,'System'),
('New policy update effective December 1','2025-11-18 14:00:00','High',0,'Policy'),
('Attendance correction request is pending review','2025-11-21 11:30:00','Normal',0,'Attendance'),
('Your performance review is scheduled next week','2025-11-19 09:00:00','Normal',0,'Performance');

INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at) VALUES
(6,1,'Delivered','2025-11-20 09:01:00'),
(1,2,'Delivered','2025-11-05 08:01:00'),
(2,2,'Delivered','2025-11-05 08:01:00'),
(3,2,'Delivered','2025-11-05 08:01:00'),
(3,3,'Delivered','2025-11-15 10:01:00'),
(1,4,'Delivered','2025-11-18 14:01:00'),
(6,5,'Delivered','2025-11-21 11:31:00'),
(6,6,'Delivered','2025-11-19 09:01:00');

INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(2,1,2),
(3,1,2),
(4,2,3),
(5,1,2),
(6,5,3),
(7,5,3),
(9,6,4),
(10,2,3);

INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Leave Request',NULL,'Line Manager',2,'Active'),
('Reimbursement',1000.00,'HR Administrator',2,'Active'),
('Payroll Adjustment',5000.00,'Payroll Officer',4,'Active'),
('Contract Approval',NULL,'HR Administrator',2,'Active');

INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(1,1,4,'Review and approve leave'),
(1,2,2,'Final approval if leave exceeds 10 days'),
(2,1,4,'Initial review of reimbursement claim'),
(2,2,2,'Final approval if claim > threshold'),
(3,1,3,'Review payroll adjustment'),
(3,2,2,'Final approval for large adjustments'),
(4,1,2,'Review and approve employment contract');

INSERT INTO ManagerNotes (employee_id, manager_id, note_content, created_at) VALUES
(6,5,'Strong performance on multiple sprints; candidate for senior role.','2025-11-15 10:30:00'),
(7,5,'Punctuality issues observed; improvement plan discussed.','2025-11-18 14:00:00'),
(9,6,'Excellent learning progress. Positive feedback from mentors.','2025-11-10 09:00:00'),
(10,2,'Shows leadership potential. Recommended for contract handling tasks.','2025-11-12 11:00:00');
