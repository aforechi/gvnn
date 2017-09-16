require 'nn'
local withCuda = pcall(require, 'cutorch')

require 'libgvnn'
if withCuda then
	require 'libcugvnn'
end

include('AffineTransformMatrixGenerator.lua')
include('AffineGridGeneratorBHWD.lua')
include('BilinearSamplerBHWD.lua')
include('TransformationRotationSO3.lua')
include('TransformationMatrix3x4GeneratorSO3.lua')
--include('TransformationMatrix3x4GeneratorQuat.lua')
include('TransformationMatrix3x4GeneratorEuler.lua')
--include('Transform3DPoints.lua')
include('Transform3DPoints_R.lua')
include('Transform3DPoints_Rt.lua')
include('Transform3DPoints_depth.lua')
include('PinHoleCameraProjectionBHWD.lua')
include('ReverseXYOrder.lua')
include('DenseAffineOpticFlowBHWD.lua')
include('NonRigidPerPixelSE2.lua')
include('NonRigidPerPixelSO3.lua')
include('NonRigidPerPixelSE3.lua')
include('Disparity1D.lua')
include('OpticalFlow2D.lua')
-- M-estimators
--include('Huber.lua')

return nn
