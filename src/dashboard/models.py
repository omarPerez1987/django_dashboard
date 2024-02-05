from django.db import models


# Create your models here.

class Room(models.Model):
    photo = models.CharField(max_length=255)
    room = models.CharField(max_length=20)
    bed = models.CharField(max_length=5)
    facilities = models.JSONField()
    description = models.TextField()
    price = models.PositiveIntegerField()
    discount = models.PositiveIntegerField()
    cancel = models.TextField()
    status = models.CharField(max_length=10)

    def __str__(self):
        return f"room {self.bed}"
    


class Booking(models.Model):
    name = models.CharField(max_length=25)
    orderDate = models.CharField(max_length=15)
    orderTime = models.TimeField()
    checkin = models.CharField(max_length=25)
    checkinTime = models.TimeField()
    checkout = models.CharField(max_length=25)
    checkoutTime = models.TimeField()
    notes = models.TextField()
    idRoom= models.ForeignKey(Room, on_delete=models.CASCADE)
    status = models.CharField(max_length=25)

    def __str__(self):
        return f"booking {self.name}"



class Contact(models.Model):
    photo = models.CharField(max_length=255)
    date = models.CharField(max_length=25)
    hour = models.TimeField()
    name = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    email = models.EmailField(max_length=35)
    telephone = models.CharField(max_length=35)
    archived = models.BooleanField(default=False)
    review = models.TextField()

    def __str__(self):
        return f"contact {self.name}"
    






