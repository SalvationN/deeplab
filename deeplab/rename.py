import os
movie_name = os.listdir('./seg')
for temp in movie_name:
    name = temp[:-4]
    new_name = name + '_drivable_id.png'

    os.rename('./seg/' + temp, 'seg/' + new_name)