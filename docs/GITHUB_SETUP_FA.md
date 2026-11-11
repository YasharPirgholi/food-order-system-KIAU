<div dir="rtl" align="right">

# راهنمای ساخت مخزن و بارگذاری پروژه در گیت‌هاب

این راهنما برای بسته food-ordering-system آماده شده است. بسته، فایل‌ها را از قبل در مسیر درست دارد؛ برای بارگذاری اولیه می‌توانید فقط از مرورگر استفاده کنید. فایل‌های موجود، مستندات طراحی و دیتابیس نمونه هستند و کد برنامه در مرحله بعد به src اضافه می‌شود.

## ۱ آماده کردن فایل‌ها در ویندوز

1. فایل Food_Order_GitHub_Starter_FA.zip را دریافت کنید.
2. روی آن راست‌کلیک و Extract All را انتخاب کنید.
3. وارد پوشه food-ordering-system شوید. پوشه درست همان جایی است که مستقیم داخلش README.md، docs، database، src و .gitignore را می‌بینید.
4. ساختار آماده را حفظ کنید. بسته‌های ZIP قبلی در این مخزن لازم نیستند؛ محتویات آن‌ها از قبل استخراج و مرتب شده است.

## ۲ ساخت مخزن

وارد حساب گیت‌هاب شوید و صفحه [ساخت مخزن](https://github.com/new) را باز کنید. اگر حساب ندارید ابتدا حساب بسازید و ایمیل آن را تأیید کنید.

| گزینه | مقدار یا انتخاب |
|---|---|
| Owner | حساب شخصی خودتان |
| Repository name | food-ordering-system |
| Description | Student food ordering system for Software Engineering Lab |
| Visibility | Public برای مشاهده عمومی؛ Private برای دسترسی محدود |
| Template | انتخاب نشود |
| Add README | خاموش؛ فایل README در بسته موجود است |
| Add .gitignore | None؛ فایل آماده در بسته موجود است |
| License | برای این بارگذاری اولیه همان None بماند |

روی Create repository کلیک کنید. با این انتخاب‌ها یک مخزن خالی ساخته می‌شود. اگر Public انتخاب کنید، استاد می‌تواند لینک مخزن را برای مشاهده باز کند. در حالت Private، مشاهده به داشتن دسترسی نیاز دارد.

## ۳ بارگذاری پوشه‌ها و فایل‌ها

1. در صفحه مخزن خالی، روی لینک uploading an existing file کلیک کنید. اگر مخزن از قبل فایل دارد، از Add file و سپس Upload files استفاده کنید.
2. در File Explorer وارد پوشه‌ای شوید که README.md و سه پوشه docs، database و src را می‌بینید.
3. داخل همین پوشه Ctrl+A بزنید و همه محتویات آن را به صفحه Upload گیت‌هاب بکشید. فایل .gitignore نیز باید در فهرست بارگذاری باشد.
4. محتویات ریشه را منتقل کنید؛ در فهرست بارگذاری باید مسیر docs/srs/SRS.md دیده شود. اگر مسیر food-ordering-system/docs/srs/SRS.md دیده می‌شود، یک پوشه اضافی در ریشه ایجاد شده است؛ بارگذاری را لغو کنید و محتویات داخل پوشه را انتخاب کنید.
5. منتظر بمانید تا همه فایل‌ها در فهرست ظاهر شوند. فایل ZIP را به عنوان جایگزین این پوشه‌ها بارگذاری نکنید؛ فایل‌های استخراج‌شده باید در مخزن دیده شوند.
6. پیام ثبت تغییر را Add project documentation and database بگذارید.
7. برای بارگذاری اولیه، اگر گزینه ثبت مستقیم روی شاخه پیش‌فرض main وجود دارد، آن را انتخاب کنید و Commit changes را بزنید.
8. اگر به جای آن، شاخه جدید انتخاب کرده‌اید و دکمه Propose changes نمایش داده می‌شود، تغییرات را پیشنهاد دهید، Pull request را باز کنید و پس از مرور، آن را با Merge pull request و تأیید ادغام وارد main کنید. برای مخزن اولیه شخصی، ثبت مستقیم مسیر کوتاه‌تری است.

این بسته کمتر از ۱۰۰ فایل دارد و همه فایل‌ها زیر محدودیت ۲۵ MiB برای بارگذاری مرورگری هستند.

## ۴ محل دقیق فایل‌های مراحل قبلی

| فایل یا بسته قبلی | محل در ساختار جدید |
|---|---|
| Food_Order_SRS_Student_FA.md | docs/srs/SRS.md |
| Food_Order_SRS_Student_FA.docx | docs/srs/SRS.docx |
| Food_Order_Activity_Diagrams_FA.md | docs/diagrams/activity/README.md |
| Food_Order_Class_Diagrams_FA.md | docs/diagrams/class/README.md |
| Food_Order_Sequence_Diagrams_FA.md | docs/diagrams/sequence/README.md |
| محتویات Food_Order_Use_Cases_FA.zip | docs/diagrams/use-case/؛ نام README_FA.md به README.md تغییر کرده است |
| محتویات Food_Order_Database_FA.zip | database/؛ نام README_FA.md به README.md تغییر کرده است |

نسخه مبنای این مخزن، SRS کوتاه دانشجویی است. فایل قدیمی Food_Order_SRS_FA.md در این بسته وارد نشده است. عکس‌های اولیه نمونه نیز بخشی از خروجی نهایی طراحی نیستند.

## ۵ فهرست تک‌تک فایل‌های مخزن

| مسیر | کاربرد |
|---|---|
| `.gitignore` | قواعد کنار گذاشتن فایل‌های موقت و داده اجرای محلی |
| `README.md` | معرفی پروژه و لینک بخش‌ها؛ آماده شده در این بسته |
| `database/README.md` | توضیح جدول‌ها، روش اجرا و ERD |
| `database/erd.mmd` | منبع Mermaid نمودار ERD |
| `database/food_order.db` | نمونه آماده SQLite شامل جدول‌ها و داده‌ها |
| `database/queries.sql` | ده پرس‌وجوی نمونه برای ارائه |
| `database/schema.sql` | ساخت شش جدول و محدودیت‌ها |
| `database/seed.sql` | داده‌های آزمایشی |
| `docs/GITHUB_SETUP_FA.md` | همین راهنمای ساخت مخزن و بارگذاری |
| `docs/diagrams/README.md` | فهرست و لینک همه دسته‌های دیاگرام |
| `docs/diagrams/activity/README.md` | چهار Activity Diagram با منبع Mermaid |
| `docs/diagrams/class/README.md` | سه نمای Class Diagram با منبع Mermaid |
| `docs/diagrams/sequence/README.md` | سه Sequence Diagram با منبع Mermaid |
| `docs/diagrams/use-case/README.md` | توضیح و نمایش سه Use Case Diagram |
| `docs/diagrams/use-case/UC_01_Customer.png` | تصویر نمودار مشتری |
| `docs/diagrams/use-case/UC_01_Customer.puml` | منبع قابل ویرایش PlantUML نمودار مشتری |
| `docs/diagrams/use-case/UC_01_Customer.svg` | تصویر برداری نمودار مشتری |
| `docs/diagrams/use-case/UC_02_Restaurant_Manager.png` | تصویر نمودار مسئول رستوران |
| `docs/diagrams/use-case/UC_02_Restaurant_Manager.puml` | منبع قابل ویرایش PlantUML نمودار مسئول رستوران |
| `docs/diagrams/use-case/UC_02_Restaurant_Manager.svg` | تصویر برداری نمودار مسئول رستوران |
| `docs/diagrams/use-case/UC_03_System_Admin.png` | تصویر نمودار مدیر سیستم |
| `docs/diagrams/use-case/UC_03_System_Admin.puml` | منبع قابل ویرایش PlantUML نمودار مدیر سیستم |
| `docs/diagrams/use-case/UC_03_System_Admin.svg` | تصویر برداری نمودار مدیر سیستم |
| `docs/srs/SRS.docx` | نسخه Word راست‌به‌چپ سند SRS |
| `docs/srs/SRS.md` | نسخه قابل مشاهده SRS دانشجویی |
| `src/README.md` | توضیح محل قرار گرفتن کد در مرحله بعد |

همه فایل‌های Use Case در یک پوشه‌اند تا آدرس نسبی تصاویر در README درست کار کند. PNG برای نمایش مستقیم، SVG برای تصویر برداری و puml برای ویرایش مدل است. نام‌ها و حروف بزرگ و کوچک فایل‌ها را حفظ کنید.

## ۶ بررسی نتیجه روی گیت‌هاب

1. به صفحه اصلی مخزن برگردید. README.md باید در ریشه باشد و متن معرفی زیر فهرست فایل‌ها نمایش داده شود.
2. docs/srs/SRS.md را باز کنید و متن SRS را ببینید؛ نسخه Word کنار آن برای دریافت و ارائه است.
3. README پوشه‌های activity، class و sequence را باز کنید. بلوک‌های mermaid باید به شکل نمودار نمایش داده شوند. اگر نمای Code را می‌بینید، به نمای Preview برگردید.
4. docs/diagrams/use-case/README.md را باز کنید و مطمئن شوید هر سه تصویر دیده می‌شوند.
5. database/README.md را باز کنید و راهنما و ERD را ببینید. فایل erd.mmd نیز منبع مستقل Mermaid است.
6. schema.sql و seed.sql را باز کنید و خوانا بودن SQL را بررسی کنید.

گیت‌هاب فایل‌های پروژه و تاریخچه تغییرات را نگهداری می‌کند. اجرای SQLite روی سیستم خودتان، با DB Browser for SQLite یا برنامه پروژه انجام می‌شود. فایل food_order.db یک دیتابیس نمونه است و برای دیدن جدول‌های آن باید فایل را دریافت و در ابزار SQLite باز کنید.

## ۷ اجرای دیتابیس پس از دریافت پروژه

1. از صفحه مخزن Code و سپس Download ZIP را انتخاب و بسته را استخراج کنید.
2. در DB Browser for SQLite، با Open Database فایل database/food_order.db را باز کنید.
3. در Browse Data جدول‌ها را ببینید و در Execute SQL پرس‌وجوهای database/queries.sql را اجرا کنید.
4. برای ساخت از صفر، یک دیتابیس خالی بسازید و schema.sql و سپس seed.sql را اجرا کنید. فایل آماده قبلاً داده دارد و برای استفاده مستقیم به اجرای دوباره این دو فایل نیاز ندارد.

پوشه database شامل نمونه ثابت برای ارائه است. هنگام برنامه‌نویسی می‌توان دیتابیس اجرایی را در runtime نگهداری کرد تا داده‌های روزمره وارد تاریخچه مخزن نشوند.

## ۸ اضافه کردن اعضای گروه

در مخزن شخصی، از Settings به Collaborators در بخش Access بروید و Add people را بزنید. نام کاربری هم‌گروهی را انتخاب و دعوت را ثبت کنید. پس از پذیرش دعوت، او دسترسی همکاری خواهد داشت. این دسترسی در مخزن شخصی شامل امکان تغییر فایل‌ها نیز هست.

اگر فایل فقط باید برای استاد قابل مشاهده باشد، انتخاب Public مشاهده با لینک را ساده می‌کند. در مخزن Private، افراد باید دسترسی دریافت کرده باشند.

## ۹ ویرایش‌های بعدی

برای تغییر متن README یا Markdown، فایل را باز و آیکن مداد را انتخاب کنید، متن را ویرایش و تغییر را ثبت کنید. برای جایگزینی یک فایل، وارد پوشه همان فایل شوید و نسخه جدید را با همان نام بارگذاری کنید. هر بار یک پیام روشن مانند Update SRS یا Add login implementation بنویسید.

برای نسخه Word، ویرایش در Word انجام و فایل جدید دوباره در docs/srs/SRS.docx بارگذاری می‌شود. برای Use Case، منبع puml و تصاویر خروجیِ تغییرکرده کنار هم به‌روز شوند. اسامی اعضای گروه و تقسیم وظایف را می‌توانید به README ریشه اضافه کنید.

مرحله بعدی، انتخاب زبان و چارچوب و نوشتن کد در src است. در این مرحله مخزن، طراحی‌ها و یک دیتابیس قابل اجرا را در اختیار گروه می‌گذارد.

## منابع راهنما

- [ساخت مخزن از رابط وب](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository)
- [بارگذاری فایل و پوشه](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository)
- [نمایش نمودارهای Mermaid در Markdown](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)
- [نمایش مستقل فایل‌های Mermaid](https://docs.github.com/en/repositories/working-with-files/using-files/working-with-non-code-files)
- [دعوت همکار به مخزن شخصی](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/inviting-collaborators-to-a-personal-repository)

</div>
