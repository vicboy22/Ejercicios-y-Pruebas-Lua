-- Script dentro de StarterPlayerScripts
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local canDoubleJump = true
local doubleJumpCooldown = 1
local lastJumpTime = 0

humanoid.StateChanged:Connect(function(_, state)
    if state == Enum.HumanoidStateType.Jumping and canDoubleJump then
        if tick() - lastJumpTime > doubleJumpCooldown then
            humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
            humanoid:Move(Vector3.new(0, 50, 0), true) -- Doble salto
            lastJumpTime = tick()
            canDoubleJump = false
            wait(1) -- Cooldown del doble salto
            canDoubleJump = true
        end
    end
end)