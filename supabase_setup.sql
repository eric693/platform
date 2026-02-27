-- 執行此 SQL 來建立資料表
-- 到 Supabase Dashboard → SQL Editor → 貼上執行

create table if not exists entries (
  id bigint generated always as identity primary key,
  title text not null,
  type text not null default 'product',
  url text not null,
  img text default '',
  description text default '',
  tags text[] default '{}',
  password text default '',
  price text default '',
  currency text default 'TWD',
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- 讓前台可以讀取（不需登入）
alter table entries enable row level security;

create policy "Public can read entries"
  on entries for select using (true);
create policy "Anyone can insert entries"
  on entries for insert with check (true);
create policy "Anyone can update entries"
  on entries for update using (true);
create policy "Anyone can delete entries"
  on entries for delete using (true);

-- 插入範例資料（可選）
insert into entries (title, type, url, img, description, tags, password, price, currency) values
('座位預訂系統', 'product', 'https://seat-booking-rlf2.onrender.com', '', '即時座位管理與線上預訂平台，支援多場地配置與即時同步。', array['Node.js','Express','WebSocket'], 'demo123', '1200', 'TWD'),
('Aura App', 'product', 'https://aura-v0q3.onrender.com', '', '智慧氛圍感知應用，打造沉浸式互動體驗。', array['React','AI','UX'], '', '', 'TWD'),
('Prompt 工程課程', 'course', 'https://eric693.github.io/prompt_course/', '', '從零開始學習 AI Prompt 工程，掌握 ChatGPT 與 Claude 的核心技巧。', array['AI','ChatGPT','Claude'], 'course2024', '980', 'TWD');