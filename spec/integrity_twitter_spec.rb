require File.dirname(__FILE__) + "/spec_helper"

describe Integrity::Notifier::IntegrityTwitter do
  include AppSpecHelper
  include NotifierSpecHelper
  
  it_should_behave_like "A notifier"

  def klass
    Integrity::Notifier::IntegrityTwitter
  end
  
  describe "notifying the world of a build" do
    before { klass.stub!(:new).and_return(notifier) }
    
    it "should instantiate a notifier with the given build and config" do
      klass.should_receive(:new).with(mock_build, anything).and_return(notifier)
      klass.notify_of_build(mock_build, notifier_config)
    end
  
    it "should pass the notifier options to the notifier" do
      klass.should_receive(:new).with(anything, notifier_config).and_return(notifier)
      klass.notify_of_build(mock_build, notifier_config)
    end
    
    it "should deliver the notification" do
      notifier.should_receive(:deliver!)
      klass.notify_of_build(mock_build, notifier_config)
    end
  end
  
  describe "generating a form for configuration" do  
    describe "with a field for the email" do
      it "should have the proper name, id and label" do
        the_form.should have_textfield("integrity_twitter_notifier_email").named("notifiers[IntegrityTwitter][email]").with_label("Email Address").with_value(nil)
      end

      it "should use the config's 'email' value if available" do
        the_form(:config => { 'email' => 'test@example.com' }).should have_textfield("integrity_twitter_notifier_email").with_value("test@example.com")
      end
    end

    describe "with a field for the pass" do
      it "should have the proper name, id and label" do
        the_form.should have_textfield("integrity_twitter_notifier_pass").named("notifiers[IntegrityTwitter][pass]").with_label("Password").with_value(nil)
      end

      it "should use the config's 'pass' value if available" do
        the_form(:config => { 'pass' => 'mypass' }).should have_textfield("integrity_twitter_notifier_pass").with_value("mypass")
      end
    end
  end
 
  
 
end