# Project
Project.create( title: "Welcome", published: true )
Project.create( title: "Second shit Project", published: true )
Project.create( title: "Wooohooo that is the fourth one", published: true )

# Image
Image.create( url: "https://farm6.staticflickr.com/5561/14828809152_fca3c59dd3_s.jpg")
Image.create( url: "https://farm6.staticflickr.com/5592/14806186196_f9685a4859_s.jpg")
Image.create( url: "http://localhost:3000/images/3/400058695_b95dead511_s.jpg")
Image.create( url: "http://localhost:3000/images/3/10689944404_9065a828de_s.jpg")


# description
Description.create( text: '<h1>Bootstrap heading</h1>
                          <p class="lead">
                            Le Nouveau-Nord est situé à proximité de deux magnifiques terrains de golf, longeant la piste cyclable. Le 1400 Émile-Zola et Albert-Charpentier vous convient à une architecture Nouvelle-Angleterre vous offrant des condos de prestige à prix accessible. Un emplacement de rêve très convoité à Sherbrooke pour sa facilité d’accès et pour sa qualité de vie, deux critères rejoignant notre vision de l’habitation urbaine. Toutes nos unités offrent un confort et une qualité de design au-delà des standards.
                          </p>
                          <p>
                            Le Nouveau-Nord est situé à proximité de deux magnifiques terrains de golf, longeant la piste cyclable. Le 1400 Émile-Zola et Albert-Charpentier vous convient à une architecture Nouvelle-Angleterre vous offrant des condos de prestige à prix accessible. Un emplacement de rêve très convoité à Sherbrooke pour sa facilité d’accès et pour sa qualité de vie, deux critères rejoignant notre vision de l’habitation urbaine. Toutes nos unités offrent un confort et une qualité de design au-delà des standards.
                          </p>' )

# Asset Relation
Asset.create( project_id: 1, asset_id: 1, asset_type: 'description' )
Asset.create( project_id: 1, asset_id: 1, asset_type: 'image' )
Asset.create( project_id: 1, asset_id: 2, asset_type: 'image' )
Asset.create( project_id: 1, asset_id: 3, asset_type: 'image' )
Asset.create( project_id: 1, asset_id: 4, asset_type: 'image' )
