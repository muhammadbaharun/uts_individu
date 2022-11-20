from django.db import models

# Create your models here.
from django.db import models

class Guest(models.Model):
    nim = models.CharField(max_length=10)
    nama = models.CharField(max_length=50)
    kegiatan = models.TextField()

    def __str__(self):
        return self.nim