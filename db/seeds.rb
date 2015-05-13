puts '**********************'
puts '*** Creating pages ***'
puts '**********************'

home = Page.create(name: 'Home')
earth = Page.create(name: 'Earth')
mars = Page.create(name: 'Mars')

puts '***********************'
puts '*** Creating blocks ***'
puts '***********************'

home.blocks.where(block_type: "main").first.widgets.create(name: "art1", type: "ArticleListWidget", options: {max: 4})
home.blocks.where(block_type: "main").first.widgets.create(name: "art2", type: "ArticleListWidget", options: {max: 1})
home.blocks.where(block_type: "side").first.widgets.create(name: "art3", type: "ArticleListWidget", options: {max: 3})

earth.blocks.where(block_type: "main").first.widgets.create(name: "art4", type: "ArticleListWidget", options: {max: 2})
earth.blocks.where(block_type: "side").first.widgets.create(name: "art5", type: "ArticleListWidget", options: {max: 4})
earth.blocks.where(block_type: "side").first.widgets.create(name: "art6", type: "ArticleListWidget", options: {max: 3})

mars.blocks.where(block_type: "main").first.widgets.create(name: "art7", type: "ArticleListWidget", options: {max: 3})
mars.blocks.where(block_type: "main").first.widgets.create(name: "art7", type: "ArticleListWidget", options: {max: 4})

puts '***********************'
puts '** Creating articles **'
puts '***********************'

Article.create({title: "test Article 1!", text: "Lorem ipsum dolor sit..."})
Article.create({title: "test Article 22!", text: "Lorem ipsum dolor sit..."})
Article.create({title: "test Article! 333", text: "Lorem ipsum dolor sit..."})
Article.create({title: "test Article! 4444", text: "Lorem ipsum dolor sit..."})