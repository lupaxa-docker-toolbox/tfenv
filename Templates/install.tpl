	git clone --depth 1 https://github.com/tfutils/tfenv.git /root/.tfenv && \
	printf '%s\n' 'export TFENV_ROOT=/root/.tfenv' 'export PATH="${TFENV_ROOT}/bin:${PATH}"' >> /root/.bashrc && \
