cert_dir = File.join(File.dirname(__FILE__), '..', 'certs')

Dor::Config.configure do
  fedora do
    url 'https://fedora.edu/fedora'
    key_pass ''
  end

  ssl do
    cert_file File.join(cert_dir, 'cert.crt')
    key_file File.join(cert_dir, 'key.key')
  end

  suri do
    mint_ids true
    id_namespace 'druid'
    url 'https://server.edu'
    user 'user'
    pass 'pass'
  end

  metadata do
    exist.url 'http://user:pword@server.edu/exist/rest/'
    catalog.url 'http://server.edu/catalog/mods'
  end

  stacks do
    document_cache_storage_root '/purl/document_cache'
    document_cache_host 'server.edu'
    document_cache_user 'user'
    local_workspace_root '/dor/workspace'
    storage_root '/stacks'
    host 'server.edu'
    user 'lyberadmin'
    local_stacks_root '/stacks'
    local_document_cache_root '/purl/document_cache'
  end

  content do
    sdr_server 'https://server.edu'
    sdr_user 'user'
    sdr_pass 'pass'
  end

  solrizer.url 'http://server.edu/solr/argo'
  workflow.url 'https://server.edu/workflow/'
  dor_services.url 'https://user:pword@server.edu/dor'

  cleanup do
    local_workspace_root '/dor/workspace'
    local_assembly_root '/dor/assembly'
    local_export_home '/dor/export'
  end

  sdr do
    url 'https://user:pword@server.edu/sdr/'
    local_workspace_root '/dor/workspace'
    local_export_home '/dor/export'
    datastreams do
      administrativeMetadata 'optional'
      contentMetadata 'optional'
      descMetadata 'required'
      defaultObjectRights 'optional'
      events 'optional'
      embargoMetadata 'optional'
      identityMetadata 'required'
      provenanceMetadata 'required'
      relationshipMetadata 'required'
      rightsMetadata 'optional'
      roleMetadata 'optional'
      sourceMetadata 'optional'
      technicalMetadata 'optional'
      versionMetadata 'required'
      workflows 'optional'
    end
  end
end

WORKFLOW_URI = 'http://server.edu/workflow'

# Constants for Dor::WorkflowService
module Dor
  CREATE_WORKFLOW = DOR_CREATE_WORKFLOW = true
  WF_URI = 'http://server.edu/workflow'
end

# External application locations
JHOVE_HOME = File.join(ENV['HOME'], 'jhoveToolkit')
