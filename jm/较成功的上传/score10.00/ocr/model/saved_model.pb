Ĺč
íĐ
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.8.02
b'unknown'óś
j
myInputPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes
:

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *Śž*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ś>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ć
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ł
dense/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *
_class
loc:@dense/kernel*
_output_shapes
:	
Č
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

-dense/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o:*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

.dense/kernel/Regularizer/l2_regularizer/L2LossL2Lossdense/kernel/read*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
Ď
'dense/kernel/Regularizer/l2_regularizerMul-dense/kernel/Regularizer/l2_regularizer/scale.dense/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 

dense/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dense/bias*
_output_shapes	
:


dense/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense/bias*
_output_shapes	
:
ł
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/MatMulMatMulmyInputdense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *7˝*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *7=*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2 *

seed * 
_output_shapes
:

Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Š
dense_1/kernel
VariableV2*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ń
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


/dense_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o:*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

0dense_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossdense_1/kernel/read*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
×
)dense_1/kernel/Regularizer/l2_regularizerMul/dense_1/kernel/Regularizer/l2_regularizer/scale0dense_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

$dense_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
Ő
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container *
_output_shapes	
:
ť
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMuldense/BiasAdddense_1/kernel/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *Ü°˝*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ü°=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ě
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Ű
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
§
dense_2/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Đ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	

/dense_2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o:*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

0dense_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossdense_2/kernel/read*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
×
)dense_2/kernel/Regularizer/l2_regularizerMul/dense_2/kernel/Regularizer/l2_regularizer/scale0dense_2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

dense_2/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:

dense_2/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container *
_output_shapes
:
ş
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldense_1/BiasAdddense_2/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
myOutputIdentitydense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

$mean_squared_error/SquaredDifferenceSquaredDifferencedense_2/BiasAddPlaceholder*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
Š
mean_squared_error/ToFloat_3/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

mean_squared_error/MulMul$mean_squared_error/SquaredDifferencemean_squared_error/ToFloat_3/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:

mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
ą
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

$mean_squared_error/num_present/EqualEqualmean_squared_error/ToFloat_3/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
´
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
ˇ
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
š
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ë
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
T0*
_output_shapes
: 
Ü
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ú
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ü
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ů
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
Ż
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
Î
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ż
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
ť
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ł
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
§
mean_squared_error/Greater/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
T0*
_output_shapes
: 
Ľ
mean_squared_error/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
T0*
_output_shapes
: 
Ť
"mean_squared_error/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
­
"mean_squared_error/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
T0*

index_type0*
_output_shapes
: 

mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
T0*
_output_shapes
: 
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
¨
mean_squared_error/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
T0*
_output_shapes
: 
Ę
total_regularization_lossAddN'dense/kernel/Regularizer/l2_regularizer)dense_1/kernel/Regularizer/l2_regularizer)dense_2/kernel/Regularizer/l2_regularizer*
T0*
N*
_output_shapes
: 
`
addAddmean_squared_error/valuetotal_regularization_loss*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ?*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
<
#gradients/add_grad/tuple/group_depsNoOp^gradients/Fill
ą
+gradients/add_grad/tuple/control_dependencyIdentitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
ł
-gradients/add_grad/tuple/control_dependency_1Identitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
w
2gradients/mean_squared_error/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ö
.gradients/mean_squared_error/value_grad/SelectSelectmean_squared_error/Greater+gradients/add_grad/tuple/control_dependency2gradients/mean_squared_error/value_grad/zeros_like*
T0*
_output_shapes
: 
Ř
0gradients/mean_squared_error/value_grad/Select_1Selectmean_squared_error/Greater2gradients/mean_squared_error/value_grad/zeros_like+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
: 
¤
8gradients/mean_squared_error/value_grad/tuple/group_depsNoOp/^gradients/mean_squared_error/value_grad/Select1^gradients/mean_squared_error/value_grad/Select_1

@gradients/mean_squared_error/value_grad/tuple/control_dependencyIdentity.gradients/mean_squared_error/value_grad/Select9^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/mean_squared_error/value_grad/Select*
_output_shapes
: 
Ą
Bgradients/mean_squared_error/value_grad/tuple/control_dependency_1Identity0gradients/mean_squared_error/value_grad/Select_19^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/mean_squared_error/value_grad/Select_1*
_output_shapes
: 
q
9gradients/total_regularization_loss_grad/tuple/group_depsNoOp.^gradients/add_grad/tuple/control_dependency_1
ü
Agradients/total_regularization_loss_grad/tuple/control_dependencyIdentity-gradients/add_grad/tuple/control_dependency_1:^gradients/total_regularization_loss_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
ţ
Cgradients/total_regularization_loss_grad/tuple/control_dependency_1Identity-gradients/add_grad/tuple/control_dependency_1:^gradients/total_regularization_loss_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
ţ
Cgradients/total_regularization_loss_grad/tuple/control_dependency_2Identity-gradients/add_grad/tuple/control_dependency_1:^gradients/total_regularization_loss_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
n
+gradients/mean_squared_error/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
p
-gradients/mean_squared_error/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
í
;gradients/mean_squared_error/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/div_grad/Shape-gradients/mean_squared_error/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ś
-gradients/mean_squared_error/div_grad/RealDivRealDiv@gradients/mean_squared_error/value_grad/tuple/control_dependencymean_squared_error/Select*
T0*
_output_shapes
: 
Ü
)gradients/mean_squared_error/div_grad/SumSum-gradients/mean_squared_error/div_grad/RealDiv;gradients/mean_squared_error/div_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ż
-gradients/mean_squared_error/div_grad/ReshapeReshape)gradients/mean_squared_error/div_grad/Sum+gradients/mean_squared_error/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
k
)gradients/mean_squared_error/div_grad/NegNegmean_squared_error/Sum_1*
T0*
_output_shapes
: 
Ą
/gradients/mean_squared_error/div_grad/RealDiv_1RealDiv)gradients/mean_squared_error/div_grad/Negmean_squared_error/Select*
T0*
_output_shapes
: 
§
/gradients/mean_squared_error/div_grad/RealDiv_2RealDiv/gradients/mean_squared_error/div_grad/RealDiv_1mean_squared_error/Select*
T0*
_output_shapes
: 
Ä
)gradients/mean_squared_error/div_grad/mulMul@gradients/mean_squared_error/value_grad/tuple/control_dependency/gradients/mean_squared_error/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Ü
+gradients/mean_squared_error/div_grad/Sum_1Sum)gradients/mean_squared_error/div_grad/mul=gradients/mean_squared_error/div_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ĺ
/gradients/mean_squared_error/div_grad/Reshape_1Reshape+gradients/mean_squared_error/div_grad/Sum_1-gradients/mean_squared_error/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
 
6gradients/mean_squared_error/div_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/div_grad/Reshape0^gradients/mean_squared_error/div_grad/Reshape_1

>gradients/mean_squared_error/div_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/div_grad/Reshape7^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/div_grad/Reshape*
_output_shapes
: 

@gradients/mean_squared_error/div_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/div_grad/Reshape_17^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/div_grad/Reshape_1*
_output_shapes
: 
Ő
:gradients/dense/kernel/Regularizer/l2_regularizer_grad/MulMulAgradients/total_regularization_loss_grad/tuple/control_dependency.dense/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ö
<gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAgradients/total_regularization_loss_grad/tuple/control_dependency-dense/kernel/Regularizer/l2_regularizer/scale*
T0*
_output_shapes
: 
Ë
Ggradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOp;^gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul=^gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul_1
Ń
Ogradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentity:gradients/dense/kernel/Regularizer/l2_regularizer_grad/MulH^gradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul*
_output_shapes
: 
×
Qgradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identity<gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul_1H^gradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/dense/kernel/Regularizer/l2_regularizer_grad/Mul_1*
_output_shapes
: 
Ű
<gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/MulMulCgradients/total_regularization_loss_grad/tuple/control_dependency_10dense_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ü
>gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul_1MulCgradients/total_regularization_loss_grad/tuple/control_dependency_1/dense_1/kernel/Regularizer/l2_regularizer/scale*
T0*
_output_shapes
: 
Ń
Igradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOp=^gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul?^gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul_1
Ů
Qgradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentity<gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/MulJ^gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul*
_output_shapes
: 
ß
Sgradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identity>gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul_1J^gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/dense_1/kernel/Regularizer/l2_regularizer_grad/Mul_1*
_output_shapes
: 
Ű
<gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/MulMulCgradients/total_regularization_loss_grad/tuple/control_dependency_20dense_2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ü
>gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul_1MulCgradients/total_regularization_loss_grad/tuple/control_dependency_2/dense_2/kernel/Regularizer/l2_regularizer/scale*
T0*
_output_shapes
: 
Ń
Igradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOp=^gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul?^gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul_1
Ů
Qgradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentity<gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/MulJ^gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul*
_output_shapes
: 
ß
Sgradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identity>gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul_1J^gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/dense_2/kernel/Regularizer/l2_regularizer_grad/Mul_1*
_output_shapes
: 
x
5gradients/mean_squared_error/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ŕ
/gradients/mean_squared_error/Sum_1_grad/ReshapeReshape>gradients/mean_squared_error/div_grad/tuple/control_dependency5gradients/mean_squared_error/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
p
-gradients/mean_squared_error/Sum_1_grad/ConstConst*
dtype0*
valueB *
_output_shapes
: 
Ç
,gradients/mean_squared_error/Sum_1_grad/TileTile/gradients/mean_squared_error/Sum_1_grad/Reshape-gradients/mean_squared_error/Sum_1_grad/Const*
T0*

Tmultiples0*
_output_shapes
: 
x
3gradients/mean_squared_error/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ë
/gradients/mean_squared_error/Select_grad/SelectSelectmean_squared_error/Equal@gradients/mean_squared_error/div_grad/tuple/control_dependency_13gradients/mean_squared_error/Select_grad/zeros_like*
T0*
_output_shapes
: 
í
1gradients/mean_squared_error/Select_grad/Select_1Selectmean_squared_error/Equal3gradients/mean_squared_error/Select_grad/zeros_like@gradients/mean_squared_error/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
§
9gradients/mean_squared_error/Select_grad/tuple/group_depsNoOp0^gradients/mean_squared_error/Select_grad/Select2^gradients/mean_squared_error/Select_grad/Select_1

Agradients/mean_squared_error/Select_grad/tuple/control_dependencyIdentity/gradients/mean_squared_error/Select_grad/Select:^gradients/mean_squared_error/Select_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/Select_grad/Select*
_output_shapes
: 
Ľ
Cgradients/mean_squared_error/Select_grad/tuple/control_dependency_1Identity1gradients/mean_squared_error/Select_grad/Select_1:^gradients/mean_squared_error/Select_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/mean_squared_error/Select_grad/Select_1*
_output_shapes
: 
Ř
Agradients/dense/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMuldense/kernel/readQgradients/dense/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
ß
Cgradients/dense_1/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMuldense_1/kernel/readSgradients/dense_1/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:

Ţ
Cgradients/dense_2/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMuldense_2/kernel/readSgradients/dense_2/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	

3gradients/mean_squared_error/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Ň
-gradients/mean_squared_error/Sum_grad/ReshapeReshape,gradients/mean_squared_error/Sum_1_grad/Tile3gradients/mean_squared_error/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

+gradients/mean_squared_error/Sum_grad/ShapeShapemean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:
Ň
*gradients/mean_squared_error/Sum_grad/TileTile-gradients/mean_squared_error/Sum_grad/Reshape+gradients/mean_squared_error/Sum_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+gradients/mean_squared_error/Mul_grad/ShapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
p
-gradients/mean_squared_error/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
í
;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/Mul_grad/Shape-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ž
)gradients/mean_squared_error/Mul_grad/MulMul*gradients/mean_squared_error/Sum_grad/Tilemean_squared_error/ToFloat_3/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
)gradients/mean_squared_error/Mul_grad/SumSum)gradients/mean_squared_error/Mul_grad/Mul;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Đ
-gradients/mean_squared_error/Mul_grad/ReshapeReshape)gradients/mean_squared_error/Mul_grad/Sum+gradients/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
+gradients/mean_squared_error/Mul_grad/Mul_1Mul$mean_squared_error/SquaredDifference*gradients/mean_squared_error/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
+gradients/mean_squared_error/Mul_grad/Sum_1Sum+gradients/mean_squared_error/Mul_grad/Mul_1=gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Ĺ
/gradients/mean_squared_error/Mul_grad/Reshape_1Reshape+gradients/mean_squared_error/Mul_grad/Sum_1-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
 
6gradients/mean_squared_error/Mul_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/Mul_grad/Reshape0^gradients/mean_squared_error/Mul_grad/Reshape_1
Ś
>gradients/mean_squared_error/Mul_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/Mul_grad/Reshape7^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/Mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@gradients/mean_squared_error/Mul_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/Mul_grad/Reshape_17^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: 

;gradients/mean_squared_error/num_present_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
ů
5gradients/mean_squared_error/num_present_grad/ReshapeReshapeCgradients/mean_squared_error/Select_grad/tuple/control_dependency_1;gradients/mean_squared_error/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
Ł
3gradients/mean_squared_error/num_present_grad/ShapeShape0mean_squared_error/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
ę
2gradients/mean_squared_error/num_present_grad/TileTile5gradients/mean_squared_error/num_present_grad/Reshape3gradients/mean_squared_error/num_present_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Egradients/mean_squared_error/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Á
Ggradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1Shape:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
ť
Ugradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsEgradients/mean_squared_error/num_present/broadcast_weights_grad/ShapeGgradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
Cgradients/mean_squared_error/num_present/broadcast_weights_grad/MulMul2gradients/mean_squared_error/num_present_grad/Tile:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Cgradients/mean_squared_error/num_present/broadcast_weights_grad/SumSumCgradients/mean_squared_error/num_present/broadcast_weights_grad/MulUgradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

Ggradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeReshapeCgradients/mean_squared_error/num_present/broadcast_weights_grad/SumEgradients/mean_squared_error/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ů
Egradients/mean_squared_error/num_present/broadcast_weights_grad/Mul_1Mul%mean_squared_error/num_present/Select2gradients/mean_squared_error/num_present_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Egradients/mean_squared_error/num_present/broadcast_weights_grad/Sum_1SumEgradients/mean_squared_error/num_present/broadcast_weights_grad/Mul_1Wgradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
¤
Igradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1ReshapeEgradients/mean_squared_error/num_present/broadcast_weights_grad/Sum_1Ggradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Pgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_depsNoOpH^gradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeJ^gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1
ý
Xgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityGgradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeQ^gradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 

Zgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependency_1IdentityIgradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1Q^gradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Ogradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
ż
Mgradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/SumSumZgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependency_1Ogradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

9gradients/mean_squared_error/SquaredDifference_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:

;gradients/mean_squared_error/SquaredDifference_grad/Shape_1ShapePlaceholder*
T0*
out_type0*
_output_shapes
:

Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/mean_squared_error/SquaredDifference_grad/Shape;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
:gradients/mean_squared_error/SquaredDifference_grad/scalarConst?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
ě
7gradients/mean_squared_error/SquaredDifference_grad/mulMul:gradients/mean_squared_error/SquaredDifference_grad/scalar>gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
7gradients/mean_squared_error/SquaredDifference_grad/subSubdense_2/BiasAddPlaceholder?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
9gradients/mean_squared_error/SquaredDifference_grad/mul_1Mul7gradients/mean_squared_error/SquaredDifference_grad/mul7gradients/mean_squared_error/SquaredDifference_grad/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/mean_squared_error/SquaredDifference_grad/SumSum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ú
;gradients/mean_squared_error/SquaredDifference_grad/ReshapeReshape7gradients/mean_squared_error/SquaredDifference_grad/Sum9gradients/mean_squared_error/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/mean_squared_error/SquaredDifference_grad/Sum_1Sum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Kgradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1Reshape9gradients/mean_squared_error/SquaredDifference_grad/Sum_1;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
7gradients/mean_squared_error/SquaredDifference_grad/NegNeg=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Dgradients/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOp8^gradients/mean_squared_error/SquaredDifference_grad/Neg<^gradients/mean_squared_error/SquaredDifference_grad/Reshape
Ţ
Lgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentity;gradients/mean_squared_error/SquaredDifference_grad/ReshapeE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
Ngradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1Identity7gradients/mean_squared_error/SquaredDifference_grad/NegE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/mean_squared_error/SquaredDifference_grad/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradLgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
ł
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_2/BiasAdd_grad/BiasAddGradM^gradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency
Ĺ
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentityLgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ő
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
&gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/BiasAdd7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1

6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	
Ž
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad6gradients/dense_2/MatMul_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes	
:

/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_1/BiasAdd_grad/BiasAddGrad7^gradients/dense_2/MatMul_grad/tuple/control_dependency

7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity6gradients/dense_2/MatMul_grad/tuple/control_dependency0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
 
gradients/AddNAddNCgradients/dense_2/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/dense_2/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
:	
Ő
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
&gradients/dense_1/MatMul_grad/MatMul_1MatMuldense/BiasAdd7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:


.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1

6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:

Ź
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad6gradients/dense_1/MatMul_grad/tuple/control_dependency*
data_formatNHWC*
T0*
_output_shapes	
:

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad7^gradients/dense_1/MatMul_grad/tuple/control_dependency

5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity6gradients/dense_1/MatMul_grad/tuple/control_dependency.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ł
gradients/AddN_1AddNCgradients/dense_1/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
N*
T0*V
_classL
JHloc:@gradients/dense_1/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul* 
_output_shapes
:

Î
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
$gradients/dense/MatMul_grad/MatMul_1MatMulmyInput5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
ü
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	

gradients/AddN_2AddNAgradients/dense/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul6gradients/dense/MatMul_grad/tuple/control_dependency_1*
N*
T0*T
_classJ
HFloc:@gradients/dense/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
_output_shapes
:	
}
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
­
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
i
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
}
beta2_power/initial_valueConst*
valueB
 *wž?*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_class
loc:@dense/bias*
_output_shapes
: 
­
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
i
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
Ľ
3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"      *
_class
loc:@dense/kernel*
_output_shapes
:

)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
č
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	
¨
dense/kernel/Adam
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
_output_shapes
:	
Î
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	

dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
§
5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
î
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ş
dense/kernel/Adam_1
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
_output_shapes
:	
Ô
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:

dense/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense/bias*
_output_shapes	
:
Â
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
v
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:

dense/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container *
_output_shapes	
:
Č
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
z
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:
Š
5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ń
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ž
dense_1/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:
* 
_output_shapes
:

×
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ť
7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *!
_class
loc:@dense_1/kernel*
_output_shapes
: 
÷
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

°
dense_1/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:
* 
_output_shapes
:

Ý
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:


dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


3dense_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

)dense_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
ä
#dense_1/bias/Adam/Initializer/zerosFill3dense_1/bias/Adam/Initializer/zeros/shape_as_tensor)dense_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
:
 
dense_1/bias/Adam
VariableV2*
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:*
shared_name *
_output_shapes	
:
Ę
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:
|
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:
Ą
5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

+dense_1/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@dense_1/bias*
_output_shapes
: 
ę
%dense_1/bias/Adam_1/Initializer/zerosFill5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
:
˘
dense_1/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container *
_output_shapes	
:
Đ
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:

dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:
Š
5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

+dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
đ
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Ź
dense_2/kernel/Adam
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	*
shared_name *
_output_shapes
:	
Ö
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	

dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Ť
7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ö
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Ž
dense_2/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	*
_output_shapes
:	
Ü
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	

dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	

#dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:

dense_2/bias/Adam
VariableV2*
_class
loc:@dense_2/bias*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:
É
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:
{
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

%dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
 
dense_2/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container *
_output_shapes
:
Ď
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:

dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:
W
Adam/learning_rateConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
valueB
 *wž?*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Ç
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_2*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes
:	
ŕ
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes	
:
Ň
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

ě
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_1/bias*
use_nesterov( *
use_locking( *
_output_shapes	
:
Ď
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
ë
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_2/bias*
use_nesterov( *
_output_shapes
:
Í
Adam/mulMulbeta1_power/read
Adam/beta1!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking( *
_output_shapes
: 
Ď

Adam/mul_1Mulbeta2_power/read
Adam/beta2!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@dense/bias*
_output_shapes
: 

AdamNoOp^Adam/Assign^Adam/Assign_1!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam

initNoOp^beta1_power/Assign^beta2_power/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_2/bias/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/kernel/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_359aa252f4f34feaa388a7f5fabef1ab/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ć
save/SaveV2/tensor_namesConst*ů
valueďBěBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
ë
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1*"
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
É
save/RestoreV2/tensor_namesConst*ů
valueďBěBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ď
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*"
dtypes
2*d
_output_shapesR
P::::::::::::::::::::

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
Ł
save/Assign_2Assign
dense/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
¨
save/Assign_3Assigndense/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
Ş
save/Assign_4Assigndense/bias/Adam_1save/RestoreV2:4*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
Ť
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	
°
save/Assign_6Assigndense/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	
˛
save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2:7*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
§
save/Assign_8Assigndense_1/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:
Ź
save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2:9*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
°
save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2:10*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
˛
save/Assign_11Assigndense_1/kernelsave/RestoreV2:11*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:

ˇ
save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:

š
save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2:13*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:

¨
save/Assign_14Assigndense_2/biassave/RestoreV2:14*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
­
save/Assign_15Assigndense_2/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
Ż
save/Assign_16Assigndense_2/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
ą
save/Assign_17Assigndense_2/kernelsave/RestoreV2:17*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
ś
save/Assign_18Assigndense_2/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	
¸
save/Assign_19Assigndense_2/kernel/Adam_1save/RestoreV2:19*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
â
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"ň
trainable_variablesÚ×
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0"Ž
	variables 
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0
x
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assigndense_1/kernel/Adam/read:02'dense_1/kernel/Adam/Initializer/zeros:0

dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assigndense_1/kernel/Adam_1/read:02)dense_1/kernel/Adam_1/Initializer/zeros:0
p
dense_1/bias/Adam:0dense_1/bias/Adam/Assigndense_1/bias/Adam/read:02%dense_1/bias/Adam/Initializer/zeros:0
x
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assigndense_1/bias/Adam_1/read:02'dense_1/bias/Adam_1/Initializer/zeros:0
x
dense_2/kernel/Adam:0dense_2/kernel/Adam/Assigndense_2/kernel/Adam/read:02'dense_2/kernel/Adam/Initializer/zeros:0

dense_2/kernel/Adam_1:0dense_2/kernel/Adam_1/Assigndense_2/kernel/Adam_1/read:02)dense_2/kernel/Adam_1/Initializer/zeros:0
p
dense_2/bias/Adam:0dense_2/bias/Adam/Assigndense_2/bias/Adam/read:02%dense_2/bias/Adam/Initializer/zeros:0
x
dense_2/bias/Adam_1:0dense_2/bias/Adam_1/Assigndense_2/bias/Adam_1/read:02'dense_2/bias/Adam_1/Initializer/zeros:0"˘
regularization_losses

)dense/kernel/Regularizer/l2_regularizer:0
+dense_1/kernel/Regularizer/l2_regularizer:0
+dense_2/kernel/Regularizer/l2_regularizer:0"(
losses

mean_squared_error/value:0"
train_op

Adam*
serving_default
+
myInput 
	myInput:0˙˙˙˙˙˙˙˙˙4
myOutput(
dense_2/BiasAdd:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict