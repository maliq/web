package web

import java.util.List
import org.bson.types.ObjectId

class Program {
  ObjectId id
  Integer cod
	String name
	String description
	String episode
	String web
	String year
	String imdbSelected
	String wikipediaSelected

	static hasMany = [imdbResults: ImdbResult, wikipediaResults: WikipediaResult]

  static constraints = {
  	imdbSelected nullable: true
		wikipediaSelected nullable: true
  }

  static mapping = {
      collection "programs"
  }

  static embedded = ['imdbResults','wikipediaResults']
}

class ImdbResult{
	String url
	String imdbId
	String title
	String postTitle

	static mapping = {
      version false
      autoTimestamp false
  }

  @Override
  public String toString(){
      return title
  }
}

class WikipediaResult{
	String title
	static mapping = {
        version false
        autoTimestamp false
    }

    @Override
    public String toString(){
        return title
    }
}
