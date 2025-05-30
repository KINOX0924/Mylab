
use mydb;

-- dept 테이블 생성
CREATE TABLE dept (
    deptno INT PRIMARY KEY,
    dname VARCHAR(14),
    loc VARCHAR(13)
);

-- dept 데이터 삽입
INSERT INTO dept VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO dept VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO dept VALUES (40, 'OPERATIONS', 'BOSTON');

-- emp 테이블 생성
CREATE TABLE emp (
    empno INT PRIMARY KEY,
    ename VARCHAR(10),
    job VARCHAR(9),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(7, 2),
    comm DECIMAL(7, 2),
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

-- emp 데이터 삽입
INSERT INTO emp VALUES (7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800.00, NULL, 20);
INSERT INTO emp VALUES (7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600.00, 300.00, 30);
INSERT INTO emp VALUES (7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250.00, 500.00, 30);
INSERT INTO emp VALUES (7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975.00, NULL, 20);
INSERT INTO emp VALUES (7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850.00, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450.00, NULL, 10);
INSERT INTO emp VALUES (7788, 'SCOTT',  'ANALYST',   7566, '1987-07-13', 3000.00, NULL, 20);
INSERT INTO emp VALUES (7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, 10);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500.00,    0.00, 30);
INSERT INTO emp VALUES (7876, 'ADAMS',  'CLERK',     7788, '1987-07-13', 1100.00, NULL, 20);
INSERT INTO emp VALUES (7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950.00, NULL, 30);
INSERT INTO emp VALUES (7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000.00, NULL, 20);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300.00, NULL, 10);
