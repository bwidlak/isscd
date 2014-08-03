# Project
Project.create( title: "Welcome", published: true )
Project.create( title: "Second shit Project", published: true )
Project.create( title: "Wooohooo that is the fourth one", published: true )

# Image
Image.create( url: "http://localhost:3000/images/1/11974295393_1644b54c94.jpg")
Image.create( url: "http://localhost:3000/images/2/8196182757_3495e6a39b.jpg")
Image.create( url: "http://localhost:3000/images/3/400058695_b95dead511.jpg")
Image.create( url: "http://localhost:3000/images/3/10689944404_9065a828de.jpg")

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
