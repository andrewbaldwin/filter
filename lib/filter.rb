module Filter

  class Filter

   attr_reader :result
 
#initialise for time constant (T)= timeconst and gap between iterations = dt
    def initialize(dt , timeconst )
      dt ||= 0.1
      timeconst ||=1
      @k=dt/((2*timeconst)+dt)
      @w=0.0
      @result = {:lowpass => 0.0, :highpass => 0.0}
    end #init

#implements a first order low-pass filter with transfer functions
# 1/(1+Ts) low pass ; Ts/(1+Ts) high pass

    def filter(x)
      w1=@w
      @w=((x-2*w1)*@k)+w1
      @result[:lowpass]=@w+w1
      @result[:highpass]=x-@result[:lowpass]
      @result
    end #filter
  end  #class
 
#test routine
  def self.testfilt
    filt=Filter.new(0.1, 1)
    #test with step function
    print "t\t x\t low\t high\n"
    0.upto(20) do |t|
      rr=filt.filter(1.0)
      r=filt.result   #not really necessary
      print "#{t}\t 1.0\t #{rr[:lowpass]}\t #{r[:highpass]}\n"
    end #do
  end #testfilt
end #module
