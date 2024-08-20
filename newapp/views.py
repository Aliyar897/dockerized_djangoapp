from datetime import datetime
from newapp.serializers import CommentSerializer
from django.http import JsonResponse

class Comment:
    def __init__(self, email, content, created=None):
        self.email = email
        self.content = content
        self.created = created or datetime.now()

def ser(request):
    serializer = CommentSerializer(data={'email': 'f@gmail.com', 'content': 'baz'})
    is_valid = serializer.is_valid()
    errors = serializer.errors
    return JsonResponse({'is_valid': is_valid, 'errors': errors})
