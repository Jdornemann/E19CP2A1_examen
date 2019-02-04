# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.find(1)
@user.holidaytasks << Holidaytask.create(
name: 'Comer una empanada',
description: '' ,
done: false,
photo: 'http://lorempixel.com/400/200/sports/1/'
)


@user.holidaytasks <<  Holidaytask.create(
name: 'Bailar una patita',
description: '', 
done: false,
photo: 'http://lorempixel.com/400/200/sports/2/'
)


@user.holidaytasks <<  Holidaytask.create(
name: 'Tomarse un terremoto',
description: '' ,
done: false,
photo: 'http://lorempixel.com/400/200/sports/3/'
)

@user.holidaytasks <<  Holidaytask.create(
name: 'Jugar una pichanga',
description: '' ,
done: false,
photo: 'http://lorempixel.com/400/200/sports/4/'
)

@user.holidaytasks <<  Holidaytask.create(
name: 'Ir a una fonda',
description: '' ,
done: false,
photo: 'http://lorempixel.com/400/200/sports/5/'
)

@user.holidaytasks <<  Holidaytask.create(
name: 'Encumbrar un volantín',
description: '', 
done: false,
photo: 'http://lorempixel.com/400/200/sports/6/'
)

