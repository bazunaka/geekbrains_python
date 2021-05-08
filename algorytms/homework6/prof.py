import pstats

p_1 = pstats.Stats('add_in_deq.prof')
p_2 = pstats.Stats('add_in_list.prof')
p_3 = pstats.Stats('extend_in_deq.prof')
p_4 = pstats.Stats('insert_in_list.prof')

p_1.sort_stats('calls').print_stats()
p_2.sort_stats('calls').print_stats()
p_3.sort_stats('calls').print_stats()
p_4.sort_stats('calls').print_stats()
