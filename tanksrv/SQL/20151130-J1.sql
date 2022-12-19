use [tankwars]

delete from defines where n = 'TodoRewardHints'
insert into dbo.defines(n, s) values
('TodoRewardHints', '')


delete from defines where n = 'TodoRewards'
insert into dbo.defines(n, s) values
('TodoRewards', '')
