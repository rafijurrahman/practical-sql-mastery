# BD Shop ডেটাসেট পরিচিতি ও পূর্ণাঙ্গ তালিকা (N = 65)
### সরকারি ব্রজমোহন কলেজ (BM College), পরিসংখ্যান বিভাগ — শিক্ষাবর্ষ ২০২৩-২৪
### SQLite 3.30 Baseline · বরিশাল বিভাগের ৬টি জেলা

---

## ১. ডেটাবেস পরিচিতি
এই ডেটাসেটে মোট ৭টি সম্পর্কিত টেবিল রয়েছে:
1. `customers` (৬৫ জন শিক্ষার্থীর পরিচিতি; কাস্টমার আইডি ১ হিসেবে মো: রাফিজুর রহমান, পটুয়াখালী)
2. `products` (১৬টি ই-কমার্স পণ্য ও ৬টি ক্যাটাগরি)
3. `categories` (৬টি ক্যাটাগরি)
4. `orders` (৪৮টি বাস্তব অর্ডার)
5. `order_items` (৮৩টি অর্ডার লাইন আইটেম)
6. `departments` (৪টি প্রাতিষ্ঠানিক বিভাগ)
7. `employees` (১০ জন কর্মকর্তা ও ম্যানেজার হায়ারার্কি)

---

## ২. ৬৫ জন শিক্ষার্থীর পূর্ণাঙ্গ গ্রাহক তালিকা (Customer Roster)

| ক্রম | কাস্টমার আইডি | শিক্ষার্থীর নাম | জেলা (বরিশাল বিভাগ) | অ্যাকাউন্ট স্ট্যাটাস | ফোন নম্বর | অফিসিয়াল ইমেইল |
| :---: | :---: | :--- | :---: | :---: | :---: | :--- |
| 01 | `1` | **Md. Rafijur Rahman** | Patuakhali | `Active` | 01711000001 | `rafijur@bdshop.com` |
| 02 | `2` | **Saiful Islam Nuhash** | Pirojpur | `Active` | 01811000002 | `nuhash@bdshop.com` |
| 03 | `3` | **Shadia Naznin Mim** | Barishal | `Active` | 01911000003 | `mim@bdshop.com` |
| 04 | `4` | **Prithyraj Biswas** | Patuakhali | `Active` | 01711000004 | `prithyraj@bdshop.com` |
| 05 | `5` | **Shakhar Debnath** | Patuakhali | `Active` | 01611000005 | `shakhar@bdshop.com` |
| 06 | `6` | **Shamic Biswas** | Jhalokathi | `Active` | 01811000006 | `shamic6@bdshop.com` |
| 07 | `7` | **Md. Saikot Munshi** | Pirojpur | `Active` | 01711000007 | `saikot7@bdshop.com` |
| 08 | `8` | **Naima Sultana** | Bhola | `Active` | 01511000008 | `naima8@bdshop.com` |
| 09 | `9` | **Akash Chandra Barai** | Pirojpur | `Active` | 01811000009 | `akash9@bdshop.com` |
| 10 | `10` | **Sadia Islam** | Barishal | `Active` | *অনুপস্থিত (NULL)* | `sadia10@bdshop.com` |
| 11 | `11` | **Anik Chandra Majumdar** | Barishal | `Active` | 01611000011 | `anik11@bdshop.com` |
| 12 | `12` | **Md. Bellal Hossen** | Bhola | `Active` | 01611000012 | `bellal12@bdshop.com` |
| 13 | `13` | **Jauata Afnan** | Patuakhali | `Active` | 01611000013 | `jauata13@bdshop.com` |
| 14 | `14` | **Mst. Jannatul Chaiti** | Barishal | `Inactive` | 01611000014 | `jannatul14@bdshop.com` |
| 15 | `15` | **Antora Rani** | Bhola | `Active` | 01711000015 | `antora15@bdshop.com` |
| 16 | `16` | **Md. Meskat** | Jhalokathi | `Active` | 01911000016 | `meskat16@bdshop.com` |
| 17 | `17` | **Mst. Nishat Jaman Nisha** | Barguna | `Active` | 01611000017 | `nishat17@bdshop.com` |
| 18 | `18` | **Md.mehedi Hasan** | Pirojpur | `Active` | 01711000018 | `mehedi18@bdshop.com` |
| 19 | `19` | **Al Mahmud Alif** | Patuakhali | `Active` | 01611000019 | `al19@bdshop.com` |
| 20 | `20` | **Manotosh Halder** | Pirojpur | `Active` | 01811000020 | `manotosh20@bdshop.com` |
| 21 | `21` | **Durjoy Malakar** | Barguna | `Active` | 01711000021 | `durjoy21@bdshop.com` |
| 22 | `22` | **Md. Nayeem Molla** | Barguna | `Active` | 01711000022 | `nayeem22@bdshop.com` |
| 23 | `23` | **M.a.idris** | Bhola | `Active` | 01711000023 | `maidris23@bdshop.com` |
| 24 | `24` | **Aminul Islam Khalifa** | Barguna | `Active` | 01711000024 | `aminul24@bdshop.com` |
| 25 | `25` | **Bithi Akter** | Patuakhali | `Active` | *অনুপস্থিত (NULL)* | `bithi25@bdshop.com` |
| 26 | `26` | **Eti Akter** | Pirojpur | `Active` | 01811000026 | `eti26@bdshop.com` |
| 27 | `27` | **Most. Inu Mony** | Jhalokathi | `Active` | 01911000027 | `inu27@bdshop.com` |
| 28 | `28` | **Asadujjaman Niaz** | Jhalokathi | `Active` | 01711000028 | `asadujjaman28@bdshop.com` |
| 29 | `29` | **Md.hasibur Rahman** | Barishal | `Active` | 01511000029 | `hasibur29@bdshop.com` |
| 30 | `30` | **Md. Mehedi Hasan** | Patuakhali | `Active` | 01611000030 | `mehedi30@bdshop.com` |
| 31 | `31` | **Anika Jahan** | Patuakhali | `Inactive` | 01511000031 | `anika31@bdshop.com` |
| 32 | `32` | **Jihad Hossain Niloy** | Pirojpur | `Active` | 01811000032 | `jihad32@bdshop.com` |
| 33 | `33` | **Rumana Islam Akhi** | Bhola | `Active` | 01511000033 | `rumana33@bdshop.com` |
| 34 | `34` | **Mst.monia** | Barishal | `Active` | 01811000034 | `monia34@bdshop.com` |
| 35 | `35` | **Arnob Biswas** | Pirojpur | `Active` | 01711000035 | `arnob35@bdshop.com` |
| 36 | `36` | **Shimul Mistry** | Jhalokathi | `Active` | 01911000036 | `shimul36@bdshop.com` |
| 37 | `37` | **Alock Barai** | Bhola | `Active` | 01911000037 | `alock37@bdshop.com` |
| 38 | `38` | **Rukaya Binte Sharna** | Barguna | `Active` | 01711000038 | `rukaya38@bdshop.com` |
| 39 | `39` | **Most. Sarmi Akter** | Barguna | `Active` | 01611000039 | `sarmi39@bdshop.com` |
| 40 | `40` | **Ratanobarai** | Barishal | `Active` | 01511000040 | `ratanobarai40@bdshop.com` |
| 41 | `41` | **Md. Khairulislam** | Barishal | `Active` | 01911000041 | `khairulislam41@bdshop.com` |
| 42 | `42` | **Apurbo Halder** | Barishal | `Active` | 01711000042 | `apurbo42@bdshop.com` |
| 43 | `43` | **Israt Jahan Tanni** | Jhalokathi | `Active` | 01611000043 | `israt43@bdshop.com` |
| 44 | `44` | **Aysha Akter Jerin** | Barishal | `Active` | 01911000044 | `aysha44@bdshop.com` |
| 45 | `45` | **Md. Ariful Islam** | Barguna | `Active` | *অনুপস্থিত (NULL)* | `ariful45@bdshop.com` |
| 46 | `46` | **Kazi Asraful Islam** | Jhalokathi | `Active` | 01511000046 | `kazi46@bdshop.com` |
| 47 | `47` | **Md. Mizanur Rahman** | Barguna | `Active` | 01711000047 | `mizanur47@bdshop.com` |
| 48 | `48` | **Md. Sakib Bepari** | Barguna | `Active` | 01911000048 | `sakib48@bdshop.com` |
| 49 | `49` | **Md. Asif Iqbal Abir** | Patuakhali | `Active` | 01711000049 | `asif49@bdshop.com` |
| 50 | `50` | **Shara Islam** | Jhalokathi | `Active` | 01711000050 | `shara50@bdshop.com` |
| 51 | `51` | **Sajid Rahaman** | Patuakhali | `Active` | 01711000051 | `sajid51@bdshop.com` |
| 52 | `52` | **Saiful Islam** | Barishal | `Active` | 01911000052 | `saiful52@bdshop.com` |
| 53 | `53` | **Laboni Akter** | Patuakhali | `Active` | 01811000053 | `laboni53@bdshop.com` |
| 54 | `54` | **Shekhar Chandra Das** | Patuakhali | `Active` | 01911000054 | `shekhar54@bdshop.com` |
| 55 | `55` | **Mst. Sajia Afrin** | Patuakhali | `Inactive` | 01511000055 | `sajia55@bdshop.com` |
| 56 | `56` | **Md. Sakibul Sikder** | Pirojpur | `Active` | 01511000056 | `sakibul56@bdshop.com` |
| 57 | `57` | **Bimal Baral** | Barguna | `Active` | 01911000057 | `bimal57@bdshop.com` |
| 58 | `58` | **Md. Sabuz Talukder** | Bhola | `Active` | 01611000058 | `sabuz58@bdshop.com` |
| 59 | `59` | **Md. Ismail Hossain** | Barguna | `Active` | 01711000059 | `ismail59@bdshop.com` |
| 60 | `60` | **Md. Alauddin** | Jhalokathi | `Active` | 01911000060 | `alauddin60@bdshop.com` |
| 61 | `61` | **Munny** | Pirojpur | `Active` | 01711000061 | `munny61@bdshop.com` |
| 62 | `62` | **Ehsan Zubayer** | Patuakhali | `Active` | 01811000062 | `ehsan62@bdshop.com` |
| 63 | `63` | **Md. Imdadul Hoque** | Pirojpur | `Active` | 01511000063 | `imdadul63@bdshop.com` |
| 64 | `64` | **Hamid Yeasir** | Pirojpur | `Active` | 01611000064 | `hamid64@bdshop.com` |
| 65 | `65` | **Md. Emran Hossain Emon** | Jhalokathi | `Active` | 01811000065 | `emran65@bdshop.com` |

---

## ৩. ডেটাবেস ব্যবহারের নির্দেশিকা

### DB Browser for SQLite (ডেস্কটপ):
1. **File > Open Database** ক্লিক করে `bdshop.db` ওপেন করুন।
2. **Execute SQL** ট্যাবে গিয়ে সরাসরি কোয়েরি রান করুন।

### DB Fiddle (অনলাইন ব্রাউজার):
1. ব্রাউজারে [db-fiddle.com](https://www.db-fiddle.com/) ওপেন করুন।
2. Database ড্রপডাউন থেকে **SQLite** সিলেক্ট করুন।
3. `db_fiddle_schema.txt` এর সম্পূর্ণ কোড কপি করে বাম পাশের **Schema SQL** বক্সে পেস্ট করুন।
4. ডান পাশের **Query SQL** বক্সে কোয়েরি লিখে **Run** বাটনে চাপুন।
