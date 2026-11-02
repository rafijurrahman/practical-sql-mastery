# Practical SQL Mastery: From Foundations to Advanced Analytics
### A 20-Module University-Grade Curriculum Built on Real E-Commerce Data

**Curriculum Architect & Instructor:** Md. Rafijur Rahman  
**Live Practice Lab:** [sql-practice-lab.netlify.app](https://sql-practice-lab.netlify.app/)  
**Interactive Learning Hub:** [sql-learning-hub.netlify.app](https://sql-learning-hub.netlify.app/)  
**LinkedIn:** [linkedin.com/in/mdrafijur](https://www.linkedin.com/in/mdrafijur)

---

## Why I Built This Curriculum

When I started teaching SQL to junior university students, I ran straight into two painful patterns.

The first was the setup trap. Half the class spent their first three lab sessions wrestling with database client configurations, broken local server permissions, and forgotten root passwords. By the time their local database engine responded, their curiosity had faded.

The second was the toy problem trap. Online tutorials frequently use sterile tables like `TableA (id, val)` and ask students to find the second highest salary. In actual company databases, data is messy. Dates arrive in varied formats. Customers have duplicate accounts across different phone numbers. Orders get cancelled halfway through payment, leaving orphaned records that ruin naive joins.

I built this repository to fix both problems.

Every query, milestone challenge, and schema in this curriculum runs against a realistic 7-table retail relational database called **BD Shop** (`bdshop.db`). It contains 65 authentic student profiles, real product catalogs, district-level shipping routes across Bangladesh, and realistic order histories. 

Students learn relational logic on data that looks and behaves like an actual business.

---

## Cloud Companions (Zero Setup Required)

You do not need to install MySQL, PostgreSQL, or any local database server to complete this course. I deployed two companion web platforms so anyone with an internet browser can practice immediately.

* **[SQL Practice Lab (Interactive IDE)](https://sql-practice-lab.netlify.app/):** Runs a full SQLite database directly inside your browser via WebAssembly (`sql.js`). It hosts 115 enterprise challenges with real-time automated query evaluation and cloud progress saving.
* **[SQL Learning Hub (Module Walkthroughs)](https://sql-learning-hub.netlify.app/):** Interactive slide reader and conceptual walkthroughs across all 20 modules, detailing syntax rules, visual execution orders, and schema diagrams.

If you prefer practicing on your personal computer offline, download `bdshop.db` from this repository and open it in [DB Browser for SQLite](https://sqlitebrowser.org/). It works identically.

---

## Curriculum Overview (20 Modules)

The course moves through a structured progression from zero knowledge to advanced analytical queries:

| Module | Core Topic | Key Concepts & Functions |
| :--- | :--- | :--- |
| **01** | Database & SQL Foundations | RDBMS concepts, tables, primary keys, SQLite setup |
| **02** | SELECT, Alias & DISTINCT | Column selection, readable aliases, eliminating duplicates |
| **03** | WHERE Clause & Filtering | Exact matching, relational operators, AND / OR logic |
| **04** | Advanced Filtering & Sorting | IN, BETWEEN, LIKE pattern matching, ORDER BY, LIMIT, OFFSET |
| **05** | DDL & DML Operations | CREATE TABLE, constraints, INSERT, UPDATE, DELETE, transactions |
| **06** | Aggregate Functions & GROUP BY | COUNT, SUM, AVG, MIN, MAX, grouping aggregations |
| **07** | HAVING & Execution Order | Post-aggregation filtering, FROM-to-LIMIT query execution pipeline |
| **08** | Conditional & Coercion Functions | CASE WHEN expressions, COALESCE, NULLIF, CAST type conversions |
| **09** | INNER JOIN & Relationships | Foreign keys, ER relationships, multi-table joins |
| **10** | LEFT JOIN & Anti-Join | Preserving unmatched rows, finding missing customers via IS NULL |
| **11** | SELF JOIN & CROSS JOIN | Hierarchical reporting, pairing entities, Cartesian products |
| **12** | Set Operators | UNION, UNION ALL, INTERSECT, EXCEPT set operations |
| **13** | String & Numeric Functions | UPPER, LOWER, TRIM, SUBSTR, LENGTH, INSTR, ROUND |
| **14** | Date & Time Analysis | DATE, STRFTIME, parsing timestamps, monthly cohorts |
| **15** | Subqueries & EXISTS | Correlated subqueries, scalar subqueries, EXISTS vs IN performance |
| **16** | Common Table Expressions (CTE) | Readable multi-step pipelines with WITH syntax, recursive queries |
| **17** | Window Functions (Rankings) | OVER (PARTITION BY ... ORDER BY), ROW_NUMBER, RANK, DENSE_RANK |
| **18** | Window Functions (Offsets & Running Totals) | LAG, LEAD period-over-period differences, rolling cumulative sums |
| **19** | Indexing, Query Plans & Modeling | EXPLAIN QUERY PLAN, B-Tree indexes, normal forms (1NF to 3NF) |
| **20** | BD Shop Capstone Project | End-to-end business reporting, customer lifetime value, cohort analysis |

---

## Challenge Sets: 115 Business Queries

The curriculum includes 115 practical problems divided into two distinct tracks:

1. **95 Module-Wise Practice Questions:** Five focused questions per module (Modules 02 to 20) that isolate and verify specific SQL syntax right after learning the concept.
2. **20 Milestone Case Studies:** Four comprehensive business scenarios placed after every four modules:
   * **Milestone 1 (Modules 01-04):** Customer demographics, order volume, and district order value analysis.
   * **Milestone 2 (Modules 05-08):** Revenue leaks, missing phone numbers, and payment status auditing.
   * **Milestone 3 (Modules 09-12):** Multi-table fulfillment, product inventory gaps, and anti-join retention analysis.
   * **Milestone 4 (Modules 13-16):** Monthly sales growth, customer purchase intervals, and CTE reporting pipelines.
   * **Milestone 5 (Modules 17-20):** Customer lifetime value, top customer ranking by district, and RFM segmentation.

---

## Repository Structure

```text
├── README.md                          # Master curriculum guide and index
├── 01_Database_and_Datasets/          # The BD Shop relational database and schemas
│   ├── bdshop.db                      # Ready-to-use SQLite database file
│   ├── bdshop_full.sql                # Complete schema and dataset insert script
│   ├── bdshop_lite.sql                # Lightweight version for quick testing
│   ├── db_fiddle_schema.txt           # Pre-formatted schema for online DB Fiddle
│   └── README_DATASET.md              # Detailed schema map, ER diagram, and table notes
├── 02_Student_Practice_SQL/           # Individual setup scripts for modules 01 to 20
├── 03_Questions/                      # Student question sets (PDF and plain text)
│   ├── 01_Module_Wise_Questions/      # 95 module-level questions
│   └── 02_Milestone_Case_Studies/     # 20 milestone enterprise case studies
├── 04_Solutions/                      # Full reference solutions and query explanations
│   ├── 01_Module_Wise_Solutions/      # Complete solutions for all 95 module questions
│   └── 02_Milestone_Case_Studies_Solutions/ # Complete solutions for all 20 milestone scenarios
└── 05_Lab_Cheat_Sheet/                # Two-page lab cheat sheet for quick reference during class
    ├── SQL_LAB_CHEAT_SHEET.pdf        # Print-ready 2-page color-coded cheat sheet
    └── SQL_LAB_CHEAT_SHEET.txt        # Plain-text quick reference
```

---

## How to Use This Repository

### For Independent Learners
1. Open the [SQL Practice Lab](https://sql-practice-lab.netlify.app/) in your browser to start writing queries without installing any software.
2. Read the corresponding module concept in the [SQL Learning Hub](https://sql-learning-hub.netlify.app/).
3. Pick up the question set from `03_Questions/` and attempt to solve each business problem on your own.
4. Check your logic against the reference solutions in `04_Solutions/`.

### For Teachers & Lab Instructors
1. Share `01_Database_and_Datasets/bdshop.db` with your students, or direct them to open `01_Database_and_Datasets/db_fiddle_schema.txt` in an online sandbox.
2. Print `05_Lab_Cheat_Sheet/SQL_LAB_CHEAT_SHEET.pdf` (2 pages) as a physical classroom desk reference.
3. Distribute `03_Questions/01_Module_Wise_Questions/STUDENT_QUESTIONS.pdf` for daily lab assignments and `03_Questions/02_Milestone_Case_Studies/MILESTONE_CASE_STUDIES.pdf` for milestone exams.
4. Use `04_Solutions/` to grade submissions and explain optimal query execution paths.

---

## Technical Standards & Database Baseline

* **Engine Baseline:** Pure SQLite 3.30+ (ISO SQL compliant core syntax).
* **Portability:** Queries are structured so that syntax transfers cleanly to PostgreSQL, MySQL, and modern data warehouses with minimal dialect adjustments.
* **Localization:** Data entries include realistic names, districts (Dhaka, Chittagong, Patuakhali, Sylhet, Rajshahi), and realistic local currencies.

---

## License & Community Use

This project is created by **Md. Rafijur Rahman (Zuboraj)**.

*"শিক্ষা হোক উন্মুক্ত, শিক্ষা হোক বিনামূল্যে, জ্ঞান কোনো পণ্য নয়, এটি সবার অধিকার।"*  
*(Education should be open, education should be free, knowledge is not a commodity, it is everyone's right.)*

You are free to use, teach, fork, and adapt these course materials for academic classes, university labs, and personal study. If you find this curriculum useful in your learning journey, a GitHub Star ⭐ is always appreciated.
