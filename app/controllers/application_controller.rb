class ApplicationController < ActionController::Base
    protect_from_forgery

    private
        before_filter :create_info

        def create_info
            @wedding_info = WeddingInfo.all.first
        end
    
end
