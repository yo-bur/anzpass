// Prevent the ANZ app's jailbreak detection and allow Touch ID/Face ID.
// Tweak based of Flex patch by ogswank.

%hook ANZJailbreakDetector

- (bool)isDeviceJailBroken {
    %log; return FALSE;
}

- (void)setJailbreakSymbolicLinkPaths:(id)arg1 {
    %log; return;
}

- (void)setJailbreakFilePaths:(id)arg1 {
    %log; return;
}

- (bool)hasExistanceOfJailbreakFiles {
    %log; return FALSE;
}

- (bool)hasSandboxIntegrityBeenCompromised {
    %log; return FALSE;
}

- (bool)hasEvidanceOfSymbolicLinking {
    %log; return FALSE;
}

%end


%hook ANZAggregateRemoteConfig

- (id)jailbreakSymbolicLinkPathsUsedToDetermineIfDeviceIsJailbroken {
    %log; return NULL;
}

- (id)jailbreakFilesToDetermineIfDeviceIsJailbroken {
    %log; return NULL;
}

%end
