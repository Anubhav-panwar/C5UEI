<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

class FrontendController extends Controller
{
    public function home()
    {
        return view('frontend.pages.home');
    }

    public function about()
    {
        return view('frontend.pages.about');
    }

    public function contact()
    {
        return view('frontend.pages.contact');
    }

    public function admissions()
    {
        return view('frontend.pages.admissions');
    }

    public function consultanting()
    {
        return view('frontend.pages.consultanting');
    }

    public function programs()
    {
        return view('frontend.pages.programs');
    }

    public function curriculum()
    {
        return view('frontend.pages.curriculum');
    }

    public function courseCatalog()
    {
        return view('frontend.pages.course-catalog');
    }

    public function ultimateBusinessPlan()
    {
        return view('frontend.pages.ultimate-business-plan');
    }

    public function ceoArmyMastermind()
    {
        return view('frontend.pages.100-ceo-army-mastermind');
    }

    public function businessOpportunitySurvey()
    {
        return view('frontend.pages.business-opportunity-survey');
    }

    public function entrepreneurship101CollegeLevel()
    {
        return view('frontend.pages.entrepreneurship-101-college-level-curriculum');
    }

    public function partnership()
    {
        return view('frontend.pages.partnership');
    }

    public function course()
    {
        return view('frontend.pages.course');
    }

    public function privacyPolicy()
    {
        return view('frontend.pages.privacy-policy');
    }

    public function termsAndConditions()
    {
        return view('frontend.pages.terms-and-conditions');
    }

    public function resultDreamer()
    {
        return view('frontend.pages.result-dreamer');
    }

    public function resultDoer()
    {
        return view('frontend.pages.result-doer');
    }

    public function resultBuilder()
    {
        return view('frontend.pages.result-builder');
    }
}
