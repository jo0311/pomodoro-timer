class TimerBase
  def initialize(minutes:)
    # 終了時間
    @end_time = Time.now + minutes * 60
  end

  def run
    while Time.now < @end_time
      sleep 1
      #　残りの秒数
      diff_seconds = @end_time.to_i - Time.now.to_i
      # 残りの分数
      remaining_minites = diff_seconds / 60
      # 残りの秒数から残りの分数に60をかけたものを減算して、残りの分数を除いて表示する秒数
      remaining_seconds = format('%02d', diff_seconds - remaining_minites * 60)
      print "\r#{remaining_minites}:#{remaining_seconds}"
    end
    puts
  end
end
