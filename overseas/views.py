from django.shortcuts import render, redirect,HttpResponse
from adminpanel.models import ContactUS, GlobalSettings, Navigation
from django.contrib import messages
from django.core.paginator import Paginator

def Home(request):
    glob = GlobalSettings.objects.all()
    sli = Navigation.objects.filter(status='Publish', page_type="Slider")
    abo = Navigation.objects.filter(status='Publish', page_type="Home/About")
    ser = Navigation.objects.filter(status='Publish', page_type="Our Service")
    ser1 = Navigation.objects.filter(status='Publish', page_type="Service")
    over = Navigation.objects.filter(status='Publish', page_type="Overseas Services")
    over1 = Navigation.objects.filter(status='Publish', page_type="Overseas Services 1")
    req = Navigation.objects.filter(status='Publish', page_type="Requirement")
    req1 = Navigation.objects.filter(status='Publish', page_type="Home1")
    cli = Navigation.objects.filter(status='Publish', page_type="Clients Say")
    cli1 = Navigation.objects.filter(status='Publish', page_type="Client1")
    cli2 = Navigation.objects.filter(status='Publish', page_type="Client")
    cli3 = Navigation.objects.filter(status='Publish', page_type="Client2")

    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/home.html", {'main':main,'glob':glob,'sli':sli,'abo':abo,'ser':ser,'ser1':ser1,'over':over,
                                             'over1':over1,'req':req,'req1':req1,'cli':cli,'cli1':cli1,'cli2':cli2,
                                             'cli3':cli3})

def redirect_to_url(request, name):
    if name == '50':
       return redirect('aboutcompany')
    if name == '57':
       return redirect('legaldoc')
    if name == '64':
       return redirect('message')
    if name == '69':
       return redirect('vision')
    if name == '75':
       return redirect('mision')
    if name == '80':
       return redirect('org_structure')
    if name == '81':
       return redirect('demandletter')
    if name == '82':
       return redirect('recprocedure')
    if name == '92':
       return redirect('recdocument')
    if name == '97':
       return redirect('joblist')
    if name == '98':
       return redirect('jobdetails')
    if name == '5':
       return redirect('vacancy')
    if name == '142':
       return redirect('instructors')
    if name == '12':
       return redirect('gallery')
    if name == '7':
       return redirect('contact') 
    else:
        return HttpResponse("Id not Matched")

def aboutcompany(request):
    glob = GlobalSettings.objects.all()
    abo = Navigation.objects.filter(status='Publish', page_type="About Company")
    abo1= Navigation.objects.filter(status='Publish', page_type="About")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/aboutcompany.html",{'main':main,'glob':glob,'abo':abo,'abo1':abo1})

def legaldoc(request):
    glob = GlobalSettings.objects.all()
    leg = Navigation.objects.filter(status='Publish', page_type="Documents")
    leg1 = Navigation.objects.filter(status='Publish', page_type="Legal Document")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')


    return render(request,"seas/about/legaldoc.html",{'main':main,'glob':glob,'leg':leg,'leg1':leg1})

def message(request):
    glob = GlobalSettings.objects.all()
    mess = Navigation.objects.filter(status='Publish', page_type="Our Message")
    mess1 = Navigation.objects.filter(status='Publish', page_type="Message")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/message.html",{'main':main,'glob':glob,'mess':mess,'mess1':mess1})

def commitment(request):
    glob = GlobalSettings.objects.all()
    comm = Navigation.objects.filter(status='Publish', page_type="Our Commitment")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/commitment.html",{'main':main,'glob':glob,'comm':comm})

def vision(request):
    glob = GlobalSettings.objects.all()
    visi = Navigation.objects.filter(status='Publish', page_type="Our Vision")
    visi1 = Navigation.objects.filter(status='Publish', page_type="Vision")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/vision.html",{'main':main,'glob':glob,'visi':visi,'visi1':visi1})

def mision(request):
    glob = GlobalSettings.objects.all()
    misi = Navigation.objects.filter(status='Publish', page_type="Our Mission")
    misi1 = Navigation.objects.filter(status='Publish', page_type="Mission")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/mision.html",{'main':main,'glob':glob,'misi':misi,'misi1':misi1})

def org_structure(request):
    glob = GlobalSettings.objects.all()
    org = Navigation.objects.filter(status='Publish', page_type="Organizational structure")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/about/org_structure.html",{'main':main,'glob':glob,'org':org})

def demandletter(request):
    glob = GlobalSettings.objects.all()
    dem = Navigation.objects.filter(status='Publish', page_type="Demand Letter")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/documents/demandletter.html",{'main':main,'glob':glob,'dem':dem})

def recdocument(request):
    glob = GlobalSettings.objects.all()
    recdoc = Navigation.objects.filter(status='Publish', page_type="Recruiting Documents")
    doc = Navigation.objects.filter(status='Publish', page_type="Documents 1")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/documents/recdocument.html",{'main':main,'glob':glob,'recdoc':recdoc,'doc':doc})

def recprocedure(request):
    glob = GlobalSettings.objects.all()
    recpro = Navigation.objects.filter(status='Publish', page_type="Recruiting Procedure")
    recpro1 = Navigation.objects.filter(status='Publish', page_type="Procedure")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/documents/recprocedure.html",{'main':main,'glob':glob,'recpro':recpro,'recpro1':recpro1})

def jobdetails(request):
    glob = GlobalSettings.objects.all()
    job = Navigation.objects.filter(status='Publish', page_type="Job Details")
    job1 = Navigation.objects.filter(status='Publish', page_type="All detail")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/jobseeker/jobdetails.html",{'main':main,'glob':glob,'job':job,'job1':job1})

def joblist(request):
    glob = GlobalSettings.objects.all()
    job = Navigation.objects.filter(status='Publish', page_type="Job List")
    un = Navigation.objects.filter(status='Publish', page_type="UNSKILLED")
    un1 = Navigation.objects.filter(status='Publish', page_type="SKILLED 1")
    semi = Navigation.objects.filter(status='Publish', page_type="SEMISKILLED")
    semi1 = Navigation.objects.filter(status='Publish', page_type="SKILLED 2")
    ski = Navigation.objects.filter(status='Publish', page_type="SKILLED")
    ski1 = Navigation.objects.filter(status='Publish', page_type="SKILLED 3")
    hig = Navigation.objects.filter(status='Publish', page_type="HIGHLYSKILLED")
    hig1 = Navigation.objects.filter(status='Publish', page_type="SKILLED 4")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/jobseeker/joblist.html",{'main':main,'glob':glob,'job':job,'un':un,'un1':un1,'semi':semi,
                                                        'semi1':semi1,'ski':ski,'ski1':ski1,'hig':hig,'hig1':hig1})

def gallery(request):
    glob = GlobalSettings.objects.all()
    gall = Navigation.objects.filter(status='Publish', page_type="Gallery")
    gall1 = Navigation.objects.filter(status='Publish', page_type="Gall")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    gallery = Navigation.objects.filter(status='Publish', page_type="Gall")
    gallery = gallery.order_by('-id')
    paginator = Paginator(gallery, 6)  # Show 25 contacts per page.

    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    return render(request,"seas/pages/gallery.html",{'main':main,'glob':glob,'gall':gall,'gall1':gall1,'page_obj':page_obj})

def instructors(request):
    glob = GlobalSettings.objects.all()
    inst = Navigation.objects.filter(status='Publish', page_type="Our Instructors")
    inst1 = Navigation.objects.filter(status='Publish', page_type="Instructors").order_by('position')
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/pages/instructors.html",{'main':main,'glob':glob,'inst':inst,'inst1':inst1})

def news(request):
    glob = GlobalSettings.objects.all()
    new = Navigation.objects.filter(status='Publish', page_type="News")
    new1 = Navigation.objects.filter(status='Publish', page_type="News 1")
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/pages/news.html",{'main':main,'glob':glob,'new':new,'new1':new1})

def contact(request):
    glob = GlobalSettings.objects.all()
    con = Navigation.objects.filter(status='Publish',page_type='Contact')
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')
        
    if request.method=="POST":
        name=request.POST.get('name')
        email=request.POST.get('email')
        subject=request.POST.get('subject')
        phone=request.POST.get('phone')
        city=request.POST.get('city')
        country=request.POST.get('country')

        if len(name)<2 or len(email)<3 or len(subject)<4 or len(phone)<2 or len(city)<2 or len(country)<2:
            messages.error(request,"Cannot submit your message. Something went wrong.",)

        else:
            con=ContactUS(name=name,email=email,subject=subject,phone=phone,city=city,Country=country)
            con.save()
            messages.success(request,"Successfully submitted your message. We will contact you soon...",)

    return render(request,"seas/contact.html",{'main':main,'glob':glob,'con':con})

def vacancy(request):
    glob = GlobalSettings.objects.all()
    vac = Navigation.objects.filter(status='Publish', page_type='Job Vacancy')
    vac1 = Navigation.objects.filter(status='Publish', page_type='Job3')
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    Vac = Navigation.objects.filter(status='Publish', page_type="Job Vacancy")
    Vac = Vac.order_by('-id')
    paginator = Paginator(Vac, 6)  # Show 6 contacts per page.

    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    return render(request,"seas/vacancy.html",{'main':main,'glob':glob,'vac':vac,'vac1':vac1,'page_obj':page_obj})

def services(request):
    glob = GlobalSettings.objects.all()
    serv = Navigation.objects.filter(status='Publish', page_type='Service 1')
    cont = Navigation.objects.filter(status='Publish', page_type='Countries')
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/services.html",{'main':main,'glob':glob,'serv':serv,'cont':cont})

def why(request):
    glob = GlobalSettings.objects.all()
    why = Navigation.objects.filter(status='Publish', page_type='Why')
    why1 = Navigation.objects.filter(status='Publish', page_type='Why 1')
    why2 = Navigation.objects.filter(status='Publish', page_type='Why 2')
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')

    return render(request,"seas/why.html",{'main':main,'glob':glob,'why':why,'why1':why1,'why2':why2})

def country(request,id):
    glob = GlobalSettings.objects.all()
    cont = Navigation.objects.filter(status='Publish', id=id)
    main = Navigation.objects.filter(status='Publish',Parent = None).order_by('position')
    
    print(cont)
    
    return render(request, "seas/Country.html", {'main':main,'glob':glob,'cont':cont})

