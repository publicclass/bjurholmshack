

all: index.css index.html
		@: # silence

index.html: index.css index.jade style.html
		node_modules/.bin/jade index.jade

index.css: index.styl
		node_modules/.bin/stylus -u ./node_modules/nib -c $<
		echo '<style>' > style.html 
		cat index.css >> style.html
		echo '</style>' >> style.html

.PHONY: all