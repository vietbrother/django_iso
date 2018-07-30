from django.db import models
# from treebeard.mp_tree import MP_Node
# Create your models here.
class Organization(models.Model):
# class Organization(MP_Node):
    name = models.CharField(max_length=400)
    parent_id = models.CharField(max_length=11)
    description = models.TextField()
    updated = models.DateTimeField(auto_now=True)
    updated_by = models.CharField(max_length=100)
    created = models.DateTimeField(auto_now_add=True)
    created_by = models.CharField(max_length=100)
    # path = models.CharField(max_length=140, null=True)
    # depth = models.CharField(max_length=140, null=True)

    def __str__(self):
        return self.id + " " + self.name
    # def __unicode__(self):
    #     return 'Organization: %s' % self.name

    class Meta:
        db_table = 'i_organization'