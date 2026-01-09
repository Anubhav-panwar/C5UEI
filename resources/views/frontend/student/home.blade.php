@extends('frontend.layouts.master')

@section('title', 'Business Opportunity Survey')

@section('content')
<style>
  :root{
    --brand: #2DBE86;
    --brand-dark:#1e9d6f;
    --bg:#f6f8fb;
    --card:#ffffff;
    --text:#0f172a;
    --muted:#64748b;
    --border:rgba(15,23,42,.10);
    --shadow: 0 10px 28px rgba(15,23,42,.08);
    --radius:16px;
  }

  .dash-wrap{
    background: var(--bg);
    min-height: calc(100vh - 80px);
    padding: 18px 0;
  }

  .dash-shell{
    display: grid;
    grid-template-columns: 280px 1fr;
    gap: 18px;
    align-items: start;
  }

  /* Sidebar */
  .side{
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow);
    overflow: hidden;
  }

  .side-top{
    padding: 18px 18px 12px;
    display:flex;
    align-items:center;
    gap: 12px;
    border-bottom: 1px solid var(--border);
  }

  .avatar{
    width: 44px;
    height: 44px;
    border-radius: 999px;
    background: linear-gradient(135deg, rgba(45,190,134,.25), rgba(45,190,134,.05));
    display:flex;
    align-items:center;
    justify-content:center;
    border: 1px solid rgba(45,190,134,.25);
  }
  .avatar svg{ opacity:.9; }

  .side-top h6{
    margin:0;
    font-weight: 700;
    color: var(--text);
    font-size: 14px;
    line-height: 1.1;
  }
  .side-top p{
    margin:3px 0 0;
    font-size: 12px;
    color: var(--muted);
  }

  .side-menu{
    padding: 12px;
  }

  .menu-item{
    display:flex;
    align-items:center;
    gap: 10px;
    padding: 12px 12px;
    border-radius: 12px;
    color: var(--text);
    text-decoration: none;
    border: 1px solid transparent;
    transition: .2s ease;
    font-weight: 600;
    font-size: 14px;
  }
  .menu-item svg{ opacity:.9; }
  .menu-item:hover{
    background: rgba(45,190,134,.08);
    border-color: rgba(45,190,134,.20);
    color: var(--text);
  }
  .menu-item.active{
    background: var(--brand);
    color: #fff;
    border-color: rgba(0,0,0,.04);
  }
  .menu-item.active svg{ opacity:1; }

  .menu-divider{
    height: 1px;
    background: var(--border);
    margin: 10px 0;
  }

  /* Main */
  .main{
    min-width: 0;
  }

  .stats-grid{
    display:grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 14px;
  }

  .stat-card{
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow);
    padding: 14px 14px;
    display:flex;
    gap: 12px;
    align-items:center;
  }

  .stat-ico{
    width: 44px;
    height: 44px;
    border-radius: 14px;
    display:flex;
    align-items:center;
    justify-content:center;
    border: 1px solid var(--border);
  }
  .ico-a{ background: rgba(56,189,248,.12); border-color: rgba(56,189,248,.25); }
  .ico-b{ background: rgba(99,102,241,.12); border-color: rgba(99,102,241,.25); }
  .ico-c{ background: rgba(249,115,22,.12); border-color: rgba(249,115,22,.25); }
  .ico-d{ background: rgba(45,190,134,.12); border-color: rgba(45,190,134,.25); }

  .stat-meta small{
    display:block;
    color: var(--muted);
    font-weight: 700;
    font-size: 12px;
    letter-spacing: .2px;
  }
  .stat-meta h3{
    margin: 2px 0 0;
    font-size: 24px;
    color: var(--text);
    font-weight: 800;
    line-height: 1.1;
  }

  .content-card{
    margin-top: 14px;
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow);
    overflow: hidden;
  }

  .content-head{
    padding: 14px 16px;
    border-bottom: 1px solid var(--border);
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap: 12px;
    flex-wrap: wrap;
  }

  .tabs{
    display:flex;
    gap: 16px;
    align-items:center;
    font-weight: 800;
  }
  .tab{
    border: none;
    background: transparent;
    color: var(--muted);
    padding: 8px 2px;
    position: relative;
    font-size: 14px;
    cursor: pointer;
  }
  .tab.active{
    color: var(--brand-dark);
  }
  .tab.active:after{
    content:"";
    position:absolute;
    left:0;
    right:0;
    bottom:-14px;
    height: 3px;
    background: var(--brand);
    border-radius: 99px;
  }

  .searchbox{
    display:flex;
    align-items:center;
    gap: 8px;
    background: rgba(15,23,42,.04);
    border: 1px solid rgba(15,23,42,.08);
    border-radius: 999px;
    padding: 8px 12px;
    min-width: 240px;
  }
  .searchbox input{
    border:none;
    outline:none;
    background: transparent;
    width: 100%;
    font-size: 13px;
    color: var(--text);
  }

  .courses{
    padding: 16px;
    display:grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 14px;
  }

  .course{
    border-radius: 16px;
    border: 1px solid var(--border);
    overflow: hidden;
    background: #fff;
    transition: .2s ease;
  }
  .course:hover{
    transform: translateY(-2px);
    box-shadow: 0 14px 36px rgba(15,23,42,.12);
  }

  .thumb{
    height: 138px;
    background: #111827;
    position: relative;
    overflow: hidden;
  }
  .thumb img{
    width:100%;
    height:100%;
    object-fit: cover;
    display:block;
    filter: saturate(1.05);
  }
  .badge{
    position:absolute;
    left: 12px;
    top: 12px;
    background: rgba(17,24,39,.70);
    backdrop-filter: blur(6px);
    color:#fff;
    border: 1px solid rgba(255,255,255,.20);
    padding: 6px 10px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 800;
  }
  .rating{
    position:absolute;
    right: 12px;
    top: 12px;
    background: rgba(255,255,255,.92);
    border: 1px solid rgba(15,23,42,.12);
    padding: 6px 10px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 900;
    color: #0f172a;
  }

  .course-body{
    padding: 12px 12px 14px;
  }
  .course-title{
    margin: 0 0 6px;
    font-weight: 900;
    color: var(--text);
    font-size: 14px;
    line-height: 1.25;
  }
  .course-sub{
    margin: 0;
    color: var(--muted);
    font-size: 12.5px;
    line-height: 1.35;
  }

  .course-foot{
    margin-top: 12px;
    display:flex;
    align-items:center;
    justify-content: space-between;
    gap: 10px;
  }

  .pill{
    display:inline-flex;
    align-items:center;
    gap: 8px;
    padding: 7px 10px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 800;
    border: 1px solid rgba(45,190,134,.25);
    background: rgba(45,190,134,.08);
    color: var(--brand-dark);
  }

  .btn-mini{
    display:inline-flex;
    align-items:center;
    gap: 8px;
    border: none;
    padding: 9px 12px;
    border-radius: 12px;
    font-weight: 900;
    font-size: 12px;
    background: #0f172a;
    color: #fff;
    cursor: pointer;
    transition: .2s ease;
  }
  .btn-mini:hover{ background: #111c34; }

  /* Responsive */
  @media (max-width: 1200px){
    .stats-grid{ grid-template-columns: repeat(2, minmax(0, 1fr)); }
    .courses{ grid-template-columns: repeat(2, minmax(0, 1fr)); }
  }
  @media (max-width: 992px){
    .dash-shell{ grid-template-columns: 1fr; }
    .side{ position: sticky; top: 10px; }
  }
  @media (max-width: 576px){
    .stats-grid{ grid-template-columns: 1fr; }
    .courses{ grid-template-columns: 1fr; }
    .searchbox{ min-width: 100%; }
  }
</style>

<div class="dash-wrap">
  <div class="container">
    <div class="dash-shell">

      {{-- LEFT SIDEBAR --}}
      <aside class="side">
        <div class="side-top">
          <div class="avatar" aria-hidden="true">
            {{-- user icon --}}
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none">
              <path d="M20 21a8 8 0 0 0-16 0" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              <path d="M12 13a4 4 0 1 0-4-4 4 4 0 0 0 4 4Z" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
            </svg>
          </div>
          <div>
            <h6>Web-Admin</h6>
            <p>Dashboard</p>
          </div>
        </div>

        <div class="side-menu">
          <a class="menu-item active" href="javascript:void(0)">
            {{-- grid icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M4 4h7v7H4V4Zm9 0h7v7h-7V4ZM4 13h7v7H4v-7Zm9 0h7v7h-7v-7Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
            </svg>
            Courses
          </a>

          <a class="menu-item" href="javascript:void(0)">
            {{-- book icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              <path d="M6.5 3H20v18H6.5A2.5 2.5 0 0 1 4 18.5v-13A2.5 2.5 0 0 1 6.5 3Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
            </svg>
            My Courses
          </a>

          <a class="menu-item" href="javascript:void(0)">
            {{-- quiz icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M9 11h6M9 15h6" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              <path d="M7 4h10a2 2 0 0 1 2 2v14l-4-2-4 2-4-2-4 2V6a2 2 0 0 1 2-2Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
            </svg>
            Quizzes
          </a>

          <a class="menu-item" href="javascript:void(0)">
            {{-- cart icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M6 6h15l-1.5 9h-12L6 6Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
              <path d="M6 6 5 3H2" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              <path d="M9 21a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm9 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
            </svg>
            Orders
          </a>

          <a class="menu-item" href="javascript:void(0)">
            {{-- note icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M8 4h10v16H6V6a2 2 0 0 1 2-2Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
              <path d="M8 8h8M8 12h8M8 16h6" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
            </svg>
            Notepad
          </a>

          <div class="menu-divider"></div>

          <a class="menu-item" href="javascript:void(0)">
            {{-- settings icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M12 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Z" stroke="currentColor" stroke-width="2"/>
              <path d="M19.4 15a7.9 7.9 0 0 0 .1-6l2-1.6-2-3.4-2.4 1A8 8 0 0 0 12 3.5 8 8 0 0 0 7.3 5l-2.4-1-2 3.4 2 1.6a7.9 7.9 0 0 0 .1 6l-2 1.6 2 3.4 2.4-1A8 8 0 0 0 12 20.5a8 8 0 0 0 4.7-1.5l2.4 1 2-3.4-2-1.6Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
            </svg>
            Settings
          </a>

          <a class="menu-item" href="javascript:void(0)">
            {{-- logout icon --}}
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M10 17l5-5-5-5" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M15 12H3" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              <path d="M21 3v18" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
            </svg>
            Logout
          </a>
        </div>
      </aside>

      {{-- MAIN CONTENT --}}
      <main class="main">

        {{-- TOP STATS (same vibe as your image) --}}
        <div class="stats-grid">
          <div class="stat-card">
            <div class="stat-ico ico-a">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M4 6h16M4 10h16M4 14h10" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Total Course</small>
              <h3>52</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-b">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M4 19V7a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
                <path d="M8 9h8M8 13h8" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Published Course</small>
              <h3>52</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-c">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M12 6v6l4 2" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" stroke="currentColor" stroke-width="2"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Pending Course</small>
              <h3>0</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-d">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M7 20a4 4 0 0 1 0-8m0 0a4 4 0 0 1 8 0m-8 0h8m2 8a4 4 0 0 0 0-8" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Total Student</small>
              <h3>13</h3>
            </div>
          </div>
        </div>

        {{-- SECOND ROW STATS (optional like your image) --}}
        <div class="stats-grid" style="margin-top:14px;">
          <div class="stat-card">
            <div class="stat-ico ico-d">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M8 21h8M12 17v4" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                <path d="M7 4h10v7a5 5 0 0 1-10 0V4Z" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Student Completed</small>
              <h3>3</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-b">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M12 6v6l4 2" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" stroke="currentColor" stroke-width="2"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Student In-progress</small>
              <h3>10</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-a">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M4 7h16M4 12h16M4 17h10" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Quizzes</small>
              <h3>18</h3>
            </div>
          </div>

          <div class="stat-card">
            <div class="stat-ico ico-c">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                <path d="M7 7h10v10H7V7Z" stroke="currentColor" stroke-width="2"/>
                <path d="M4 4h4M16 4h4M4 16h4M16 16h4" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="stat-meta">
              <small>Orders</small>
              <h3>6</h3>
            </div>
          </div>
        </div>

        {{-- COURSES AREA --}}
        <section class="content-card">
          <div class="content-head">
            <div class="tabs">
              <button class="tab active" type="button">All</button>
              <button class="tab" type="button">Publish</button>
              <button class="tab" type="button">Pending</button>
            </div>

            <div class="searchbox">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                <path d="M21 21l-4.3-4.3" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                <path d="M10.5 18a7.5 7.5 0 1 0 0-15 7.5 7.5 0 0 0 0 15Z" stroke="currentColor" stroke-width="2"/>
              </svg>
              <input type="text" placeholder="Search courses..." />
            </div>
          </div>

          <div class="courses">
            {{-- Course Card 1 --}}
            <article class="course">
              <div class="thumb">
                <span class="badge">Master Class</span>
                <span class="rating">★★★★★</span>
                <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1200&q=70" alt="Course">
              </div>
              <div class="course-body">
                <h4 class="course-title">Modern CEO: Paradox of Freedom</h4>
                <p class="course-sub">Business strategy, leadership mindset & execution framework.</p>
                <div class="course-foot">
                  <span class="pill">Published</span>
                  <button class="btn-mini" type="button">View</button>
                </div>
              </div>
            </article>

            {{-- Course Card 2 --}}
            <article class="course">
              <div class="thumb">
                <span class="badge">Master Class</span>
                <span class="rating">★★★★★</span>
                <img src="https://images.unsplash.com/photo-1521737604893-d14cc237f11d?auto=format&fit=crop&w=1200&q=70" alt="Course">
              </div>
              <div class="course-body">
                <h4 class="course-title">Millionaire Fork in the Road</h4>
                <p class="course-sub">Decision-making, money systems & growth planning.</p>
                <div class="course-foot">
                  <span class="pill">Published</span>
                  <button class="btn-mini" type="button">View</button>
                </div>
              </div>
            </article>

            {{-- Course Card 3 --}}
            <article class="course">
              <div class="thumb">
                <span class="badge">New</span>
                <span class="rating">★★★★☆</span>
                <img src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1200&q=70" alt="Course">
              </div>
              <div class="course-body">
                <h4 class="course-title">Awakening the Ashes</h4>
                <p class="course-sub">Mindset rebuild, clarity & consistent action.</p>
                <div class="course-foot">
                  <span class="pill" style="border-color: rgba(249,115,22,.25); background: rgba(249,115,22,.08); color:#c2410c;">Pending</span>
                  <button class="btn-mini" type="button">View</button>
                </div>
              </div>
            </article>
          </div>
        </section>

      </main>
    </div>
  </div>
</div>

{{-- Optional tiny tab UI (no backend logic changed) --}}
<script>
  (function(){
    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(t => {
      t.addEventListener('click', () => {
        tabs.forEach(x => x.classList.remove('active'));
        t.classList.add('active');
      });
    });
  })();
</script>
@endsection
