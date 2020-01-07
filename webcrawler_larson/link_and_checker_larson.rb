############################################################
#
# Name:        Craig Larson
# Assignment:  Form Search
# Date:        5/21/17
# Class:       CIS 283
# Description: Crawl through the web, copying links.
#
############################################################

class LinkChecker

  def initialize( website )
    @links = []
    @@base_url = website
  end

  def add_link(new_link)
    @links << new_link
  end

  def display_all_links
    link_str = ""
    @links.each do | link |
      link_str += link.to_s + "\n"
    end
    return link_str
  end

  def to_s
    return "#{@links}"
  end

end

class Link < LinkChecker

  def initialize( link, click_value )
    @link = link
    @click_value = click_value

    if (@link =~ /\Ahttp/  ) == 0
      @link_type = "external"
    else
      @link_type = "internal"
    end


    if ( @link != nil  && @link != "#" )
      if( @link_type == "internal")
        response = Net::HTTP.get_response(URI("https://" + @@base_url + @link))
      else
        response = Net::HTTP.get_response(URI(@link))
      end

      @code = response.code
      # puts "Return Code: #{@code}\nLink: #{@link}\nClick Value: #{@click_value}\nLink Type: #{@link_type}\n\n"
    end

   end


  def to_s
    return "LINK: #{@link}\nCLICK VALUE:  #{@click_value}\nCODE: #{@code}\nLINK TYPE: #{@link_type}" + "\n"
  end

end
