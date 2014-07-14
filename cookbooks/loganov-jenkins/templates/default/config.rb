<?xml version='1.0' encoding='UTF-8'?>
<project>
  <actions/>
  <description>Transmission Daemon</description>
  <keepDependencies>false</keepDependencies>
  <properties>
    <com.coravy.hudson.plugins.github.GithubProjectProperty plugin="github@1.8">
      <projectUrl>http://github.com/loganov/chef-repo/</projectUrl>
    </com.coravy.hudson.plugins.github.GithubProjectProperty>
  </properties>
  <scm class="hudson.plugins.git.GitSCM" plugin="git@2.2.1">
    <configVersion>2</configVersion>
    <userRemoteConfigs>
      <hudson.plugins.git.UserRemoteConfig>
        <refspec>+refs/pull/*:refs/remotes/origin/pr/*</refspec>
        <url>git@github.com:loganov/chef-repo.git</url>
      </hudson.plugins.git.UserRemoteConfig>
    </userRemoteConfigs>
    <branches>
      <hudson.plugins.git.BranchSpec>
        <name>**</name>
      </hudson.plugins.git.BranchSpec>
    </branches>
    <doGenerateSubmoduleConfigurations>false</doGenerateSubmoduleConfigurations>
    <submoduleCfg class="list"/>
    <extensions>
      <hudson.plugins.git.extensions.impl.PreBuildMerge>
        <options>
          <mergeRemote>origin</mergeRemote>
          <mergeTarget>master</mergeTarget>
          <mergeStrategy>default</mergeStrategy>
        </options>
      </hudson.plugins.git.extensions.impl.PreBuildMerge>
    </extensions>
  </scm>
  <canRoam>true</canRoam>
  <disabled>false</disabled>
  <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
  <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
  <triggers>
    <hudson.triggers.SCMTrigger>
      <spec>H/5 * * * *</spec>
      <ignorePostCommitHooks>false</ignorePostCommitHooks>
    </hudson.triggers.SCMTrigger>
  </triggers>
  <concurrentBuild>false</concurrentBuild>
  <builders>
    <hudson.tasks.Shell>
      <command>export COOKBOOK_PATH=/var/lib/jenkins/jobs/cookbook-transmission/workspace/cookbooks
knife cookbook upload loganov-transmission -c /etc/chef/knife.rb</command>
    </hudson.tasks.Shell>
  </builders>
  <publishers>
    <hudson.plugins.git.GitPublisher plugin="git@2.2.1">
      <configVersion>2</configVersion>
      <pushMerge>true</pushMerge>
      <pushOnlyIfSuccess>true</pushOnlyIfSuccess>
    </hudson.plugins.git.GitPublisher>
  </publishers>
  <buildWrappers/>
</project>