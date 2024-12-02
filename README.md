<div dir="rtl">
<h1> مسار تطوير شبكة تواصل إجتماعي باستخدام Ruby on Rails </h1>
<p>الشيفرة المصدرية الخاصة بمسار تطوير شبكة تواصل إجتماعي باستخدام Ruby on Rails ضمن دورة "دورة تطوير تطبيقات الويب باستخدام لغة Ruby" المقدمة من أكاديمية حسوب</p>

<div>
<a href="https://academy.hsoub.com/learn/ruby-web-application-development/">دورة تطوير تطبيقات الويب باستخدام لغة Ruby</a>
</div>

<h2> التأكد أن النظام جاهز لعمل المشروع </h2>
<ul dir="ltr">
<li><code>ruby --version</code></li>
<li><code>rails --version</code></li>
<li><code>bundle --version</code></li>
<li><code>psql --version</code></li>
</ul>
<h2> خطوات التثبيت </h2>
<p>بالبداية ننزل المشروع ونقوم بتحميل المكتبات المطلوبة:</p>
<div dir="ltr"><code><pre>
bundle install
</pre></code></div>
<p>نقوم بنسخ ملف .env.example ل .env ونضبط الإعدادات</p>
<div dir="ltr"><code><pre>
cp .env.example .env
</pre></code></div>
<p>الآن نقوم بالربط مع قاعدة البيانات عبر إنشاء قاعدة بيانات جديدة باسم social_media_network_2024 في postgresql ونقوم بإضافة البيانات لها عبر التعليمات:</p>
<div dir="ltr"><code><pre>
rails db:migrate
</pre></code></div>
<p>أصبح كل شيء جاهز، نقوم الآن بتشغيل المشروع:</p>
<div dir="ltr"><code><pre>
rails server
</pre></code></div>


<h2> تشغيل المشروع باستخدام دوكر </h2>
<p>قم بتنصيب برنامج Docker Desktop على الحاسب الخاص بك </p>

<p>نقوم بنسخ ملف .env.example ل .env ونضبط الإعدادات</p>
<div dir="ltr"><code><pre>
cp .env.example .env
</pre></code></div>
<p> قم تنفيذ التعليمة التالية ضمن مجلد المشروع</p>
<div dir="ltr"><code><pre>
docker compose build
</pre></code></div>
<p> الآن لتشغيل المشروع أكتب التعليمة</p>
<div dir="ltr"><code><pre>
docker compose up
</pre></code></div>