from django.shortcuts import render

# Create your views here.
from . models import post

def index(request):

    postingan = post.objects.all

    context = {
        'TampungPostingan' : postingan

    }

    return render(request, 'buku/index.html', context)