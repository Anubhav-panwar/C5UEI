<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\FrontendController;

Route::get('/', [FrontendController::class, 'home'])->name('home');
Route::get('/about', [FrontendController::class, 'about'])->name('about');
Route::get('/contact', [FrontendController::class, 'contact'])->name('contact');
Route::get('/admissions', [FrontendController::class, 'admissions'])->name('admissions');
Route::get('/consultanting', [FrontendController::class, 'consultanting'])->name('consultanting');
Route::get('/programs', [FrontendController::class, 'programs'])->name('programs');
Route::get('/curriculum', [FrontendController::class, 'curriculum'])->name('curriculum');
Route::get('/course-catalog', [FrontendController::class, 'courseCatalog'])->name('courseCatalog');
Route::get('/ultimate-business-plan', [FrontendController::class, 'ultimateBusinessPlan'])->name('ultimateBusinessPlan');
Route::get('/100-ceo-army-mastermind', [FrontendController::class, 'ceoArmyMastermind'])->name('ceoArmyMastermind');
Route::get('/business-opportunity-survey', [FrontendController::class, 'businessOpportunitySurvey'])->name('businessOpportunitySurvey');
Route::get('/entrepreneurship-101-college-level-curriculum', [FrontendController::class, 'entrepreneurship101CollegeLevel'])->name('entrepreneurship101CollegeLevel');
Route::get('/partnership', [FrontendController::class, 'partnership'])->name('partnership');
Route::get('/course', [FrontendController::class, 'course'])->name('course');
Route::get('/privacy-policy', [FrontendController::class, 'privacyPolicy'])->name('privacyPolicy');
Route::get('/terms-and-conditions', [FrontendController::class, 'termsAndConditions'])->name('termsAndConditions');
Route::get('/result-dreamer', [FrontendController::class, 'resultDreamer'])->name('resultDreamer');
Route::get('/result-doer', [FrontendController::class, 'resultDoer'])->name('resultDoer');
Route::get('/result-builder', [FrontendController::class, 'resultBuilder'])->name('resultBuilder');
