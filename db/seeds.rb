Artist.destroy_all
Song.destroy_all

#Artists
taylor = Artist.create(name:"Taylor Swift", picture:"http://res.cloudinary.com/dxfy5wpqt/image/upload/v1489870469/codaisseurify/swift.jpg")
carly = Artist.create(name:"Carly Rae Jepsen", picture:"http://res.cloudinary.com/dxfy5wpqt/image/upload/c_scale,h_250/v1489915388/codaisseurify/carly.jpg")


#songs
blank = Song.create(name:"Blank Space", artist:taylor)
widest = Song.create(name:"Wildest Dreams", artist:taylor)
call = Song.create(name:"Call Me Maybe", artist:carly)
