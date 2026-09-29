# 命名：container_loop
# 説明：（説明未記載）
# >
# =/function admin:system/update/container_loop
data modify storage admin:update ContainerItem set from storage admin:update Container[0]

function admin:system/update/.neo {pass:"ContainerItem"}

data modify storage admin:update Container[0] set from storage admin:update ContainerItem

data modify storage admin:update ContainerAfter append from storage admin:update Container[0]
data remove storage admin:update Container[0]
execute if data storage admin:update Container[0] run function admin:system/update/container_loop