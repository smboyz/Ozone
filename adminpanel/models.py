from django.db import models
# from django.utils import timezone

class GlobalSettings(models.Model):
    SiteName = models.CharField(max_length=100)
    SiteContact = models.CharField(max_length=100)
    SiteEmail = models.EmailField()
    SiteAddress = models.CharField(max_length=500)
    Sitedescription = models.CharField(max_length=500)
    Sitelicence = models.CharField(max_length=300)
    Sitetwitterlink = models.CharField(max_length=300)
    Sitefacebooklink = models.CharField(max_length=300)
    Sitelinkdinlink = models.CharField(max_length=300)
    Siteinstagramlink = models.CharField(max_length=300)
    Sitewhatsapplink = models.CharField(max_length=300)
    Sitefax = models.CharField(max_length=300,null=True)
    logo = models.ImageField(upload_to="Global/",max_length=200, null=True, default=None)
    back_image = models.ImageField(upload_to="Global/",null=True)
    brochure = models.FileField(upload_to="brochure/",null=True)
    brochure_name = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.SiteName

class ContactUS(models.Model):
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    subject = models.CharField(max_length=50)
    phone = models.CharField(max_length=50,null=True)
    city = models.CharField(max_length=50,null=True)
    Country = models.CharField(max_length=50,null=True)

    def __str__(self):
        return self.name
    
    

class Navigation(models.Model):
    PAGE_TYPE = (
        ('Home', 'Home'),('Vision','Vision'),('Mission','Mission'),('Home/About', 'Home/About'),
        ('Documents', 'Documents'),('About Company','About Company'),('Overseas Services 1','Overseas Services 1'),
        ('About', 'About'),('Our Message','Our Message'),('Our Commitment','Our Commitment'),
        ('Contact', 'Contact'),('Organizational structure','Organizational structure'),('Demand Letter','Demand Letter'),
        ('Job Seeker', 'Job Seeker'),('Recruiting Procedure','Recruiting Procedure'),('Recruiting Documents','Recruiting Documents'),
        ('Gallery', 'Gallery'),('Slider','Slider'),('Service','Service'),('Overseas Services','Overseas Services'),
        ('Newspaper Vacancy', 'Newspaper Vacancy'),('Our Service','Our Service'),('Requirement','Requirement'),
        ('Group','Group'),('Normal','Normal'),('Talent','Talent'),('Procedure','Procedure'),('Instructors','Instructors'),
        ('News','News'),('Clients Say','Clients Say'),('Home1','Home1'),('Documents 1','Documents 1'),('Our Mission','Our Mission'),
        ('Client','Client'),('Job3','Job3'),('News 1','News 1'),('Gall','Gall'),('Job Details','Job Details'),('Client1','Client1'),
        ('Client2','Client2'),('Legal Document','Legal Document'),('Message','Message'),('Our Vision','Our Vision'),
        ('Job Vacancy','Job Vacancy'),('Job List','Job List'),('UNSKILLED','UNSKILLED'),('SKILLED','SKILLED'),('SEMISKILLED','SEMISKILLED'),
        ('HIGHLYSKILLED','HIGHLYSKILLED'),('All detail','All detail'),('SKILLED 1','SKILLED 1'),('SKILLED 2','SKILLED 2'),
        ('SKILLED 3','SKILLED 3'),('SKILLED 4','SKILLED 4'),('Our Instructors','Our Instructors'),('Instructors','Instructors'),
        ('Countries','Countries'),('Service 1','Service 1'),('Why','Why'),('Why 1','Why 1'),('Why 2','Why 2'),
    )

    STATUS = (
        ('Publish', 'Publish'),
        ('Draft', 'Draft')
    )
    name = models.CharField(max_length=100, null=False)
    caption = models.CharField(max_length=100)
    status = models.CharField(choices=STATUS, max_length=50)
    position = models.IntegerField()
    page_type = models.CharField(choices=PAGE_TYPE, null=True, blank=True, max_length=50)
    title = models.CharField(max_length=200)
    short_desc = models.TextField(null=True)
    desc = models.TextField(null=True)
    bannerimage = models.ImageField(upload_to="about/",null=True)
    meta_title = models.CharField(max_length=100, null=True)
    meta_keyword = models.CharField(max_length=100, null=True)
    icon_image = models.TextField(null=True)
    slider_image = models.ImageField(upload_to="about/", null=True)
    Parent = models.ForeignKey('self', related_name="childs", on_delete=models.CASCADE, null=True, blank=True)
    brochure = models.FileField(upload_to="brochure/",null=True)

    def __str__(self):
        return self.name


