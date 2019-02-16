// Prevent the ANZ app's jailbreak detection and allow Touch ID/Face ID.
// Tweak based of Flex patch by user ogswank.

%hook ANZJailbreakDetector

- (bool)isDeviceJailBroken {
    return FALSE;
}

- (void)setJailbreakSymbolicLinkPaths:(id)arg1 {
    return;
}

- (void)setJailbreakFilePaths:(id)arg1 {
    return;
}

- (bool)hasExistanceOfJailbreakFiles {
    return FALSE;
}

- (bool)hasSandboxIntegrityBeenCompromised {
    return FALSE;
}

- (bool)hasEvidanceOfSymbolicLinking {
    return FALSE;
}

%end


%hook ANZAggregateRemoteConfig

- (id)jailbreakSymbolicLinkPathsUsedToDetermineIfDeviceIsJailbroken {
    return NULL;
}

- (id)jailbreakFilesToDetermineIfDeviceIsJailbroken {
    return NULL;
}

%end
