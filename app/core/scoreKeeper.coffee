Pop.ScoreKeeper = (tenses = []) ->
  @pops = 0
  @drops = 0
  @points = 0
  @rounds = 1

  for tense in tenses
    @["#{tense.camelize()}Pops"] = 0
    @["#{tense.camelize()}Drops"] = 0

  return

Pop.ScoreKeeper.prototype.getPercent = (tense = null) ->
  if tense == null
    pops = @pops
    total = @pops + @drops
  else
    pops = @["#{tense.camelize()}Pops"]
    drops = @["#{tense.camelize()}Drops"]
    total = pops + drops
  if total == 0 then 0 else Math.round((pops / total) * 100)