from django.contrib import admin
from django.urls import path
from overseas import views

urlpatterns = [
    path("", views.Home, name="home"),
    path("aboutcompany", views.aboutcompany, name="aboutcompany"),
    path("legaldoc", views.legaldoc, name="legaldoc"),
    path("message", views.message, name="message"),
    path("commitment", views.commitment, name="commitment"),
    path("vision", views.vision, name="vision"),
    path("mision", views.mision, name="mision"),
    path("org_structure", views.org_structure, name="org_structure"),
    path("demandletter", views.demandletter, name="demandletter"),
    path("recdocument", views.recdocument, name="recdocument"),
    path("recprocedure", views.recprocedure, name="recprocedure"),
    path("jobdetails", views.jobdetails, name="jobdetails"),
    path("joblist", views.joblist, name="joblist"),
    path("gallery", views.gallery, name="gallery"),
    path("instructors", views.instructors, name="instructors"),
    path("news", views.news, name="news"),
    path("contact", views.contact, name="contact"),
    path("vacancy", views.vacancy, name="vacancy"),
    path("services", views.services, name="services"),
    path("why", views.why, name="why"),
    path("country/<int:id>/", views.country, name="country"),
    path("menu/<str:name>/",views.redirect_to_url , name="menu"),
    path("submenu/<str:name>/", views.redirect_to_url, name="submenu"),
]


